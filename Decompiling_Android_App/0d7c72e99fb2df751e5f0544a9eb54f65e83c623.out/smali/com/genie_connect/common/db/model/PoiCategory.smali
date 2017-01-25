.class public Lcom/genie_connect/common/db/model/PoiCategory;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "PoiCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/PoiCategory$Properties;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "poicategories"

.field public static final TABLE_NAME:Ljava/lang/String; = "poiCategories"


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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/genie_connect/common/db/model/PoiCategory;->name:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "modifiedBy"    # Ljava/lang/String;
    .param p2, "noChildren"    # Ljava/lang/Long;
    .param p3, "parent"    # Ljava/lang/String;
    .param p4, "importCameFrom"    # Ljava/lang/String;
    .param p5, "modifiedDate"    # Ljava/util/Date;
    .param p6, "sponsorCampaign"    # Ljava/lang/Long;
    .param p7, "isRootParent"    # Ljava/lang/Boolean;
    .param p8, "_id"    # Ljava/lang/String;
    .param p9, "createdBy"    # Ljava/lang/String;
    .param p10, "importBatch"    # Ljava/lang/String;
    .param p11, "name"    # Ljava/lang/String;
    .param p12, "createdDate"    # Ljava/util/Date;
    .param p13, "importKey"    # Ljava/lang/String;
    .param p14, "_namespace"    # Ljava/lang/String;
    .param p15, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/genie_connect/common/db/model/PoiCategory;->modifiedBy:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/genie_connect/common/db/model/PoiCategory;->noChildren:Ljava/lang/Long;

    .line 84
    iput-object p3, p0, Lcom/genie_connect/common/db/model/PoiCategory;->parent:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/genie_connect/common/db/model/PoiCategory;->importCameFrom:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lcom/genie_connect/common/db/model/PoiCategory;->modifiedDate:Ljava/util/Date;

    .line 87
    iput-object p6, p0, Lcom/genie_connect/common/db/model/PoiCategory;->sponsorCampaign:Ljava/lang/Long;

    .line 88
    iput-object p7, p0, Lcom/genie_connect/common/db/model/PoiCategory;->isRootParent:Ljava/lang/Boolean;

    .line 89
    iput-object p8, p0, Lcom/genie_connect/common/db/model/PoiCategory;->_id:Ljava/lang/String;

    .line 90
    iput-object p9, p0, Lcom/genie_connect/common/db/model/PoiCategory;->createdBy:Ljava/lang/String;

    .line 91
    iput-object p10, p0, Lcom/genie_connect/common/db/model/PoiCategory;->importBatch:Ljava/lang/String;

    .line 92
    iput-object p11, p0, Lcom/genie_connect/common/db/model/PoiCategory;->name:Ljava/lang/String;

    .line 93
    iput-object p12, p0, Lcom/genie_connect/common/db/model/PoiCategory;->createdDate:Ljava/util/Date;

    .line 94
    iput-object p13, p0, Lcom/genie_connect/common/db/model/PoiCategory;->importKey:Ljava/lang/String;

    .line 95
    iput-object p14, p0, Lcom/genie_connect/common/db/model/PoiCategory;->_namespace:Ljava/lang/String;

    .line 96
    iput-object p15, p0, Lcom/genie_connect/common/db/model/PoiCategory;->_dataversion:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "poicategories"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "poiCategories"

    return-object v0
.end method
