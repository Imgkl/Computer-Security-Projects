.class public Lcom/genie_connect/common/db/model/AdBanner;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "AdBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/AdBanner$Properties;,
        Lcom/genie_connect/common/db/model/AdBanner$AdBannerSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "adbanners"

.field public static final TABLE_NAME:Ljava/lang/String; = "adBanners"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public banner:Ljava/lang/Long;

.field public bannerUrl:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public exhibitor:Ljava/lang/Long;

.field public iPad2Banner:Ljava/lang/Long;

.field public iPad2BannerUrl:Ljava/lang/String;

.field public iPadBanner:Ljava/lang/Long;

.field public iPadBannerUrl:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public infoPage:Ljava/lang/Long;

.field public linkType:Ljava/lang/Long;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public portalBanner:Ljava/lang/Long;

.field public portalBannerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/genie_connect/common/db/model/AdBanner;->id:Ljava/lang/Long;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "modifiedBy"    # Ljava/lang/String;
    .param p2, "linkType"    # Ljava/lang/Long;
    .param p3, "importCameFrom"    # Ljava/lang/String;
    .param p4, "infoPage"    # Ljava/lang/Long;
    .param p5, "iPad2BannerUrl"    # Ljava/lang/String;
    .param p6, "modifiedDate"    # Ljava/util/Date;
    .param p7, "portalBanner"    # Ljava/lang/Long;
    .param p8, "id"    # Ljava/lang/Long;
    .param p9, "iPadBannerUrl"    # Ljava/lang/String;
    .param p10, "bannerUrl"    # Ljava/lang/String;
    .param p11, "_id"    # Ljava/lang/String;
    .param p12, "createdBy"    # Ljava/lang/String;
    .param p13, "iPad2Banner"    # Ljava/lang/Long;
    .param p14, "name"    # Ljava/lang/String;
    .param p15, "importBatch"    # Ljava/lang/String;
    .param p16, "portalBannerUrl"    # Ljava/lang/String;
    .param p17, "iPadBanner"    # Ljava/lang/Long;
    .param p18, "createdDate"    # Ljava/util/Date;
    .param p19, "exhibitor"    # Ljava/lang/Long;
    .param p20, "banner"    # Ljava/lang/Long;
    .param p21, "importKey"    # Ljava/lang/String;
    .param p22, "_namespace"    # Ljava/lang/String;
    .param p23, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/genie_connect/common/db/model/AdBanner;->modifiedBy:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/genie_connect/common/db/model/AdBanner;->linkType:Ljava/lang/Long;

    .line 140
    iput-object p3, p0, Lcom/genie_connect/common/db/model/AdBanner;->importCameFrom:Ljava/lang/String;

    .line 141
    iput-object p4, p0, Lcom/genie_connect/common/db/model/AdBanner;->infoPage:Ljava/lang/Long;

    .line 142
    iput-object p5, p0, Lcom/genie_connect/common/db/model/AdBanner;->iPad2BannerUrl:Ljava/lang/String;

    .line 143
    iput-object p6, p0, Lcom/genie_connect/common/db/model/AdBanner;->modifiedDate:Ljava/util/Date;

    .line 144
    iput-object p7, p0, Lcom/genie_connect/common/db/model/AdBanner;->portalBanner:Ljava/lang/Long;

    .line 145
    iput-object p8, p0, Lcom/genie_connect/common/db/model/AdBanner;->id:Ljava/lang/Long;

    .line 146
    iput-object p9, p0, Lcom/genie_connect/common/db/model/AdBanner;->iPadBannerUrl:Ljava/lang/String;

    .line 147
    iput-object p10, p0, Lcom/genie_connect/common/db/model/AdBanner;->bannerUrl:Ljava/lang/String;

    .line 148
    iput-object p11, p0, Lcom/genie_connect/common/db/model/AdBanner;->_id:Ljava/lang/String;

    .line 149
    iput-object p12, p0, Lcom/genie_connect/common/db/model/AdBanner;->createdBy:Ljava/lang/String;

    .line 150
    iput-object p13, p0, Lcom/genie_connect/common/db/model/AdBanner;->iPad2Banner:Ljava/lang/Long;

    .line 151
    iput-object p14, p0, Lcom/genie_connect/common/db/model/AdBanner;->name:Ljava/lang/String;

    .line 152
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AdBanner;->importBatch:Ljava/lang/String;

    .line 153
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AdBanner;->portalBannerUrl:Ljava/lang/String;

    .line 154
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AdBanner;->iPadBanner:Ljava/lang/Long;

    .line 155
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AdBanner;->createdDate:Ljava/util/Date;

    .line 156
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AdBanner;->exhibitor:Ljava/lang/Long;

    .line 157
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AdBanner;->banner:Ljava/lang/Long;

    .line 158
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AdBanner;->importKey:Ljava/lang/String;

    .line 159
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AdBanner;->_namespace:Ljava/lang/String;

    .line 160
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AdBanner;->_dataversion:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 50
    sget-object v0, Lcom/genie_connect/common/db/model/AdBanner;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "campaigns"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "campaigns"

    sget-object v7, Lcom/genie_connect/common/db/model/AdBanner;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "bannerUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "banner"

    sget-object v5, Lcom/genie_connect/common/db/model/AdBanner;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "linkType"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "infoPage"

    sget-object v5, Lcom/genie_connect/common/db/model/AdBanner;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "exhibitor"

    sget-object v5, Lcom/genie_connect/common/db/model/AdBanner;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/AdBanner;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "adbanners"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/genie_connect/common/db/model/AdBanner;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "adBanners"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/genie_connect/common/db/model/AdBanner;->id:Ljava/lang/Long;

    .line 126
    return-void
.end method
