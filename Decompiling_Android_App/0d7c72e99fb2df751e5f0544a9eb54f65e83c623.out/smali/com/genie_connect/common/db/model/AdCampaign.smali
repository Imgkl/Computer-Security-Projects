.class public Lcom/genie_connect/common/db/model/AdCampaign;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "AdCampaign.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/AdCampaign$Properties;,
        Lcom/genie_connect/common/db/model/AdCampaign$AdcCampaignSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "adcampaigns"

.field public static final TABLE_NAME:Ljava/lang/String; = "adCampaigns"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/genie_connect/common/db/model/AdCampaign;->id:Ljava/lang/Long;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "modifiedBy"    # Ljava/lang/String;
    .param p2, "importCameFrom"    # Ljava/lang/String;
    .param p3, "modifiedDate"    # Ljava/util/Date;
    .param p4, "id"    # Ljava/lang/Long;
    .param p5, "_id"    # Ljava/lang/String;
    .param p6, "createdBy"    # Ljava/lang/String;
    .param p7, "name"    # Ljava/lang/String;
    .param p8, "importBatch"    # Ljava/lang/String;
    .param p9, "createdDate"    # Ljava/util/Date;
    .param p10, "importKey"    # Ljava/lang/String;
    .param p11, "_namespace"    # Ljava/lang/String;
    .param p12, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/genie_connect/common/db/model/AdCampaign;->modifiedBy:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/genie_connect/common/db/model/AdCampaign;->importCameFrom:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/genie_connect/common/db/model/AdCampaign;->modifiedDate:Ljava/util/Date;

    .line 104
    iput-object p4, p0, Lcom/genie_connect/common/db/model/AdCampaign;->id:Ljava/lang/Long;

    .line 105
    iput-object p5, p0, Lcom/genie_connect/common/db/model/AdCampaign;->_id:Ljava/lang/String;

    .line 106
    iput-object p6, p0, Lcom/genie_connect/common/db/model/AdCampaign;->createdBy:Ljava/lang/String;

    .line 107
    iput-object p7, p0, Lcom/genie_connect/common/db/model/AdCampaign;->name:Ljava/lang/String;

    .line 108
    iput-object p8, p0, Lcom/genie_connect/common/db/model/AdCampaign;->importBatch:Ljava/lang/String;

    .line 109
    iput-object p9, p0, Lcom/genie_connect/common/db/model/AdCampaign;->createdDate:Ljava/util/Date;

    .line 110
    iput-object p10, p0, Lcom/genie_connect/common/db/model/AdCampaign;->importKey:Ljava/lang/String;

    .line 111
    iput-object p11, p0, Lcom/genie_connect/common/db/model/AdCampaign;->_namespace:Ljava/lang/String;

    .line 112
    iput-object p12, p0, Lcom/genie_connect/common/db/model/AdCampaign;->_dataversion:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 38
    sget-object v0, Lcom/genie_connect/common/db/model/AdCampaign;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "adverts"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "adverts"

    sget-object v7, Lcom/genie_connect/common/db/model/AdCampaign;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/AdCampaign;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "adcampaigns"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/genie_connect/common/db/model/AdCampaign;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "adCampaigns"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/genie_connect/common/db/model/AdCampaign;->id:Ljava/lang/Long;

    .line 89
    return-void
.end method
