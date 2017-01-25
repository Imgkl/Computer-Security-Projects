.class public Lcom/genie_connect/common/db/model/SessionCategory;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "SessionCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/SessionCategory$Properties;,
        Lcom/genie_connect/common/db/model/SessionCategory$SessionCategorySyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "sessioncategories"

.field public static final TABLE_NAME:Ljava/lang/String; = "sessionCategories"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isRootParent:Ljava/lang/Boolean;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public noChildren:Ljava/lang/Long;

.field public parent:Ljava/lang/String;

.field public sponsorCampaign:Ljava/lang/Long;

.field public sponsor_banner:Ljava/lang/Long;

.field public sponsor_bannerUrl:Ljava/lang/String;

.field public sponsor_exhibitor:Ljava/lang/Long;

.field public sponsor_infoPage:Ljava/lang/Long;

.field public sponsor_linkType:Ljava/lang/Long;

.field public sponsor_portalBanner:Ljava/lang/Long;

.field public sponsor_portalBannerUrl:Ljava/lang/String;

.field public sponsor_showBanner:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/genie_connect/common/db/model/SessionCategory;->name:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "modifiedBy"    # Ljava/lang/String;
    .param p2, "noChildren"    # Ljava/lang/Long;
    .param p3, "parent"    # Ljava/lang/String;
    .param p4, "importCameFrom"    # Ljava/lang/String;
    .param p5, "sponsor_portalBanner"    # Ljava/lang/Long;
    .param p6, "sponsor_bannerUrl"    # Ljava/lang/String;
    .param p7, "sponsor_showBanner"    # Ljava/lang/Boolean;
    .param p8, "sponsor_linkType"    # Ljava/lang/Long;
    .param p9, "sponsor_portalBannerUrl"    # Ljava/lang/String;
    .param p10, "sponsor_infoPage"    # Ljava/lang/Long;
    .param p11, "sponsor_exhibitor"    # Ljava/lang/Long;
    .param p12, "sponsor_banner"    # Ljava/lang/Long;
    .param p13, "modifiedDate"    # Ljava/util/Date;
    .param p14, "sponsorCampaign"    # Ljava/lang/Long;
    .param p15, "isRootParent"    # Ljava/lang/Boolean;
    .param p16, "_id"    # Ljava/lang/String;
    .param p17, "createdBy"    # Ljava/lang/String;
    .param p18, "importBatch"    # Ljava/lang/String;
    .param p19, "name"    # Ljava/lang/String;
    .param p20, "createdDate"    # Ljava/util/Date;
    .param p21, "importKey"    # Ljava/lang/String;
    .param p22, "_namespace"    # Ljava/lang/String;
    .param p23, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/genie_connect/common/db/model/SessionCategory;->modifiedBy:Ljava/lang/String;

    .line 127
    iput-object p2, p0, Lcom/genie_connect/common/db/model/SessionCategory;->noChildren:Ljava/lang/Long;

    .line 128
    iput-object p3, p0, Lcom/genie_connect/common/db/model/SessionCategory;->parent:Ljava/lang/String;

    .line 129
    iput-object p4, p0, Lcom/genie_connect/common/db/model/SessionCategory;->importCameFrom:Ljava/lang/String;

    .line 130
    iput-object p5, p0, Lcom/genie_connect/common/db/model/SessionCategory;->sponsor_portalBanner:Ljava/lang/Long;

    .line 131
    iput-object p6, p0, Lcom/genie_connect/common/db/model/SessionCategory;->sponsor_bannerUrl:Ljava/lang/String;

    .line 132
    iput-object p7, p0, Lcom/genie_connect/common/db/model/SessionCategory;->sponsor_showBanner:Ljava/lang/Boolean;

    .line 133
    iput-object p8, p0, Lcom/genie_connect/common/db/model/SessionCategory;->sponsor_linkType:Ljava/lang/Long;

    .line 134
    iput-object p9, p0, Lcom/genie_connect/common/db/model/SessionCategory;->sponsor_portalBannerUrl:Ljava/lang/String;

    .line 135
    iput-object p10, p0, Lcom/genie_connect/common/db/model/SessionCategory;->sponsor_infoPage:Ljava/lang/Long;

    .line 136
    iput-object p11, p0, Lcom/genie_connect/common/db/model/SessionCategory;->sponsor_exhibitor:Ljava/lang/Long;

    .line 137
    iput-object p12, p0, Lcom/genie_connect/common/db/model/SessionCategory;->sponsor_banner:Ljava/lang/Long;

    .line 138
    iput-object p13, p0, Lcom/genie_connect/common/db/model/SessionCategory;->modifiedDate:Ljava/util/Date;

    .line 139
    iput-object p14, p0, Lcom/genie_connect/common/db/model/SessionCategory;->sponsorCampaign:Ljava/lang/Long;

    .line 140
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/SessionCategory;->isRootParent:Ljava/lang/Boolean;

    .line 141
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/SessionCategory;->_id:Ljava/lang/String;

    .line 142
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/SessionCategory;->createdBy:Ljava/lang/String;

    .line 143
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/SessionCategory;->importBatch:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/SessionCategory;->name:Ljava/lang/String;

    .line 145
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/SessionCategory;->createdDate:Ljava/util/Date;

    .line 146
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/SessionCategory;->importKey:Ljava/lang/String;

    .line 147
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/SessionCategory;->_namespace:Ljava/lang/String;

    .line 148
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/SessionCategory;->_dataversion:Ljava/lang/String;

    .line 149
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 61
    sget-object v0, Lcom/genie_connect/common/db/model/SessionCategory;->COMMON_FIELDS_STRING_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "isRootParent"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v3, "name"

    sget-object v4, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v2, v3, v4, v6}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;Z)V

    aput-object v2, v1, v6

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "children"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "children"

    sget-object v7, Lcom/genie_connect/common/db/model/SessionCategory;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "sponsor"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->SPONSOR_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "parent"

    sget-object v5, Lcom/genie_connect/common/db/model/SessionCategory;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "sponsorCampaign"

    sget-object v5, Lcom/genie_connect/common/db/model/AdCampaign;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/SessionCategory;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "sessioncategories"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "sessionCategories"

    return-object v0
.end method
