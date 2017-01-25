.class public Lcom/genie_connect/common/db/model/Hotspot;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Hotspot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Hotspot$Properties;,
        Lcom/genie_connect/common/db/model/Hotspot$HotspotSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "hotspots"

.field public static final TABLE_NAME:Ljava/lang/String; = "hotspots"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public id:Ljava/lang/Long;

.field public identifier:Ljava/lang/String;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public mapPosition_colour:Ljava/lang/String;

.field public mapPosition_label:Ljava/lang/String;

.field public mapPosition_labelColour:Ljava/lang/String;

.field public mapPosition_map:Ljava/lang/Long;

.field public mapPosition_rotation:Ljava/lang/Long;

.field public mapPosition_textBoundingBox:Ljava/lang/String;

.field public mapPosition_type:Ljava/lang/Long;

.field public mapPosition_vectors:Ljava/lang/String;

.field public mapPosition_vectorsBig:Ljava/lang/String;

.field public mapPosition_vectorsFormat:Ljava/lang/Long;

.field public mapPosition_version:Ljava/lang/Long;

.field public mapPosition_zIndex:Ljava/lang/Long;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Hotspot;->id:Ljava/lang/Long;

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mapPosition_colour"    # Ljava/lang/String;
    .param p2, "mapPosition_vectors"    # Ljava/lang/String;
    .param p3, "mapPosition_zIndex"    # Ljava/lang/Long;
    .param p4, "mapPosition_vectorsFormat"    # Ljava/lang/Long;
    .param p5, "mapPosition_textBoundingBox"    # Ljava/lang/String;
    .param p6, "mapPosition_labelColour"    # Ljava/lang/String;
    .param p7, "mapPosition_rotation"    # Ljava/lang/Long;
    .param p8, "mapPosition_map"    # Ljava/lang/Long;
    .param p9, "mapPosition_label"    # Ljava/lang/String;
    .param p10, "mapPosition_type"    # Ljava/lang/Long;
    .param p11, "mapPosition_version"    # Ljava/lang/Long;
    .param p12, "mapPosition_vectorsBig"    # Ljava/lang/String;
    .param p13, "modifiedBy"    # Ljava/lang/String;
    .param p14, "importCameFrom"    # Ljava/lang/String;
    .param p15, "modifiedDate"    # Ljava/util/Date;
    .param p16, "id"    # Ljava/lang/Long;
    .param p17, "_id"    # Ljava/lang/String;
    .param p18, "createdBy"    # Ljava/lang/String;
    .param p19, "name"    # Ljava/lang/String;
    .param p20, "importBatch"    # Ljava/lang/String;
    .param p21, "identifier"    # Ljava/lang/String;
    .param p22, "createdDate"    # Ljava/util/Date;
    .param p23, "importKey"    # Ljava/lang/String;
    .param p24, "_namespace"    # Ljava/lang/String;
    .param p25, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Hotspot;->mapPosition_colour:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Hotspot;->mapPosition_vectors:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Hotspot;->mapPosition_zIndex:Ljava/lang/Long;

    .line 138
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Hotspot;->mapPosition_vectorsFormat:Ljava/lang/Long;

    .line 139
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Hotspot;->mapPosition_textBoundingBox:Ljava/lang/String;

    .line 140
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Hotspot;->mapPosition_labelColour:Ljava/lang/String;

    .line 141
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Hotspot;->mapPosition_rotation:Ljava/lang/Long;

    .line 142
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Hotspot;->mapPosition_map:Ljava/lang/Long;

    .line 143
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Hotspot;->mapPosition_label:Ljava/lang/String;

    .line 144
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Hotspot;->mapPosition_type:Ljava/lang/Long;

    .line 145
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Hotspot;->mapPosition_version:Ljava/lang/Long;

    .line 146
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Hotspot;->mapPosition_vectorsBig:Ljava/lang/String;

    .line 147
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Hotspot;->modifiedBy:Ljava/lang/String;

    .line 148
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Hotspot;->importCameFrom:Ljava/lang/String;

    .line 149
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Hotspot;->modifiedDate:Ljava/util/Date;

    .line 150
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Hotspot;->id:Ljava/lang/Long;

    .line 151
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Hotspot;->_id:Ljava/lang/String;

    .line 152
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Hotspot;->createdBy:Ljava/lang/String;

    .line 153
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Hotspot;->name:Ljava/lang/String;

    .line 154
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Hotspot;->importBatch:Ljava/lang/String;

    .line 155
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Hotspot;->identifier:Ljava/lang/String;

    .line 156
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Hotspot;->createdDate:Ljava/util/Date;

    .line 157
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Hotspot;->importKey:Ljava/lang/String;

    .line 158
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Hotspot;->_namespace:Ljava/lang/String;

    .line 159
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Hotspot;->_dataversion:Ljava/lang/String;

    .line 160
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 54
    sget-object v0, Lcom/genie_connect/common/db/model/Hotspot;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "identifier"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "mapPosition"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->MAP_POSITION_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "actions"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "actions"

    sget-object v7, Lcom/genie_connect/common/db/model/Hotspot;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Hotspot;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-string v0, "hotspots"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Hotspot;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "hotspots"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Hotspot;->id:Ljava/lang/Long;

    .line 123
    return-void
.end method
