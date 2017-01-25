.class public Lcom/genie_connect/common/db/model/Category;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Category.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Category$Properties;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "categories"

.field public static final TABLE_NAME:Ljava/lang/String; = "categories"


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
    .line 90
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Category;->name:Ljava/lang/String;

    .line 95
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
    .line 97
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Category;->modifiedBy:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Category;->noChildren:Ljava/lang/Long;

    .line 100
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Category;->parent:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Category;->importCameFrom:Ljava/lang/String;

    .line 102
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Category;->sponsor_portalBanner:Ljava/lang/Long;

    .line 103
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Category;->sponsor_bannerUrl:Ljava/lang/String;

    .line 104
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Category;->sponsor_showBanner:Ljava/lang/Boolean;

    .line 105
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Category;->sponsor_linkType:Ljava/lang/Long;

    .line 106
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Category;->sponsor_portalBannerUrl:Ljava/lang/String;

    .line 107
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Category;->sponsor_infoPage:Ljava/lang/Long;

    .line 108
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Category;->sponsor_exhibitor:Ljava/lang/Long;

    .line 109
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Category;->sponsor_banner:Ljava/lang/Long;

    .line 110
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Category;->modifiedDate:Ljava/util/Date;

    .line 111
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Category;->sponsorCampaign:Ljava/lang/Long;

    .line 112
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Category;->isRootParent:Ljava/lang/Boolean;

    .line 113
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Category;->_id:Ljava/lang/String;

    .line 114
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Category;->createdBy:Ljava/lang/String;

    .line 115
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Category;->importBatch:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Category;->name:Ljava/lang/String;

    .line 117
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Category;->createdDate:Ljava/util/Date;

    .line 118
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Category;->importKey:Ljava/lang/String;

    .line 119
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Category;->_namespace:Ljava/lang/String;

    .line 120
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Category;->_dataversion:Ljava/lang/String;

    .line 121
    return-void
.end method


# virtual methods
.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "categories"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "categories"

    return-object v0
.end method
