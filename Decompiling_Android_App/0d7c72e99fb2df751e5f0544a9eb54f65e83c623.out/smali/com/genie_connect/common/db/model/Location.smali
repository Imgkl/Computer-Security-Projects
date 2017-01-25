.class public Lcom/genie_connect/common/db/model/Location;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Location$Properties;,
        Lcom/genie_connect/common/db/model/Location$MapPositionSyncableFields;,
        Lcom/genie_connect/common/db/model/Location$LocationFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "locations"

.field public static final TABLE_NAME:Ljava/lang/String; = "locations"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public locationType:Ljava/lang/String;

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
    .line 125
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Location;->name:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .param p16, "_id"    # Ljava/lang/String;
    .param p17, "createdBy"    # Ljava/lang/String;
    .param p18, "locationType"    # Ljava/lang/String;
    .param p19, "importBatch"    # Ljava/lang/String;
    .param p20, "name"    # Ljava/lang/String;
    .param p21, "createdDate"    # Ljava/util/Date;
    .param p22, "importKey"    # Ljava/lang/String;
    .param p23, "_namespace"    # Ljava/lang/String;
    .param p24, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Location;->mapPosition_colour:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Location;->mapPosition_vectors:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Location;->mapPosition_zIndex:Ljava/lang/Long;

    .line 136
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Location;->mapPosition_vectorsFormat:Ljava/lang/Long;

    .line 137
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Location;->mapPosition_textBoundingBox:Ljava/lang/String;

    .line 138
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Location;->mapPosition_labelColour:Ljava/lang/String;

    .line 139
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Location;->mapPosition_rotation:Ljava/lang/Long;

    .line 140
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Location;->mapPosition_map:Ljava/lang/Long;

    .line 141
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Location;->mapPosition_label:Ljava/lang/String;

    .line 142
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Location;->mapPosition_type:Ljava/lang/Long;

    .line 143
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Location;->mapPosition_version:Ljava/lang/Long;

    .line 144
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Location;->mapPosition_vectorsBig:Ljava/lang/String;

    .line 145
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Location;->modifiedBy:Ljava/lang/String;

    .line 146
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Location;->importCameFrom:Ljava/lang/String;

    .line 147
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Location;->modifiedDate:Ljava/util/Date;

    .line 148
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Location;->_id:Ljava/lang/String;

    .line 149
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Location;->createdBy:Ljava/lang/String;

    .line 150
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Location;->locationType:Ljava/lang/String;

    .line 151
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Location;->importBatch:Ljava/lang/String;

    .line 152
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Location;->name:Ljava/lang/String;

    .line 153
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Location;->createdDate:Ljava/util/Date;

    .line 154
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Location;->importKey:Ljava/lang/String;

    .line 155
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Location;->_namespace:Ljava/lang/String;

    .line 156
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Location;->_dataversion:Ljava/lang/String;

    .line 157
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 71
    sget-object v0, Lcom/genie_connect/common/db/model/Location;->COMMON_FIELDS_STRING_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "mapPosition"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->MAP_POSITION_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "locationType"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Location;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "locations"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "locations"

    return-object v0
.end method
