.class public Lcom/genie_connect/common/db/model/MapFacility;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "MapFacility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/MapFacility$Properties;,
        Lcom/genie_connect/common/db/model/MapFacility$MapFacilitySyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "mapfacilities"

.field public static final TABLE_NAME:Ljava/lang/String; = "mapFacilities"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public fullDescription:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public logo:Ljava/lang/Long;

.field public logoUrl:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/genie_connect/common/db/model/MapFacility;->id:Ljava/lang/Long;

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "logo"    # Ljava/lang/Long;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "modifiedBy"    # Ljava/lang/String;
    .param p4, "logoUrl"    # Ljava/lang/String;
    .param p5, "importCameFrom"    # Ljava/lang/String;
    .param p6, "modifiedDate"    # Ljava/util/Date;
    .param p7, "id"    # Ljava/lang/Long;
    .param p8, "fullDescription"    # Ljava/lang/String;
    .param p9, "_id"    # Ljava/lang/String;
    .param p10, "createdBy"    # Ljava/lang/String;
    .param p11, "name"    # Ljava/lang/String;
    .param p12, "importBatch"    # Ljava/lang/String;
    .param p13, "createdDate"    # Ljava/util/Date;
    .param p14, "importKey"    # Ljava/lang/String;
    .param p15, "_namespace"    # Ljava/lang/String;
    .param p16, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/genie_connect/common/db/model/MapFacility;->logo:Ljava/lang/Long;

    .line 118
    iput-object p2, p0, Lcom/genie_connect/common/db/model/MapFacility;->location:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lcom/genie_connect/common/db/model/MapFacility;->modifiedBy:Ljava/lang/String;

    .line 120
    iput-object p4, p0, Lcom/genie_connect/common/db/model/MapFacility;->logoUrl:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Lcom/genie_connect/common/db/model/MapFacility;->importCameFrom:Ljava/lang/String;

    .line 122
    iput-object p6, p0, Lcom/genie_connect/common/db/model/MapFacility;->modifiedDate:Ljava/util/Date;

    .line 123
    iput-object p7, p0, Lcom/genie_connect/common/db/model/MapFacility;->id:Ljava/lang/Long;

    .line 124
    iput-object p8, p0, Lcom/genie_connect/common/db/model/MapFacility;->fullDescription:Ljava/lang/String;

    .line 125
    iput-object p9, p0, Lcom/genie_connect/common/db/model/MapFacility;->_id:Ljava/lang/String;

    .line 126
    iput-object p10, p0, Lcom/genie_connect/common/db/model/MapFacility;->createdBy:Ljava/lang/String;

    .line 127
    iput-object p11, p0, Lcom/genie_connect/common/db/model/MapFacility;->name:Ljava/lang/String;

    .line 128
    iput-object p12, p0, Lcom/genie_connect/common/db/model/MapFacility;->importBatch:Ljava/lang/String;

    .line 129
    iput-object p13, p0, Lcom/genie_connect/common/db/model/MapFacility;->createdDate:Ljava/util/Date;

    .line 130
    iput-object p14, p0, Lcom/genie_connect/common/db/model/MapFacility;->importKey:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/MapFacility;->_namespace:Ljava/lang/String;

    .line 132
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/MapFacility;->_dataversion:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 51
    sget-object v0, Lcom/genie_connect/common/db/model/MapFacility;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "logoUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "fullDescription"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "location"

    sget-object v5, Lcom/genie_connect/common/db/model/MapFacility;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "downloadables"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "downloadables"

    sget-object v7, Lcom/genie_connect/common/db/model/MapFacility;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/MapFacility;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "mapfacilities"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/genie_connect/common/db/model/MapFacility;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "mapFacilities"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/genie_connect/common/db/model/MapFacility;->id:Ljava/lang/Long;

    .line 105
    return-void
.end method
