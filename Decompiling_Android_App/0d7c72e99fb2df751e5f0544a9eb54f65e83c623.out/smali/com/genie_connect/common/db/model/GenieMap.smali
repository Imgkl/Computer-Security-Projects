.class public Lcom/genie_connect/common/db/model/GenieMap;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "GenieMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/GenieMap$Properties;,
        Lcom/genie_connect/common/db/model/GenieMap$MapSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "maps"

.field public static final MAP_TYPE_INTERACTIVE:I = 0x1

.field public static final MAP_TYPE_STATIC:I = 0x0

.field public static final TABLE_NAME:Ljava/lang/String; = "maps"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public cameraMinZ:Ljava/lang/Long;

.field public cameraX:Ljava/lang/Long;

.field public cameraY:Ljava/lang/Long;

.field public cameraZ:Ljava/lang/Long;

.field public colour:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public emspId:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public image:Ljava/lang/Long;

.field public imageUrl:Ljava/lang/String;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public rotationOffset:Ljava/lang/Long;

.field public seqNo:Ljava/lang/Long;

.field public type:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/genie_connect/common/db/model/GenieMap;->id:Ljava/lang/Long;

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "seqNo"    # Ljava/lang/Long;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "modifiedBy"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/Long;
    .param p5, "id"    # Ljava/lang/Long;
    .param p6, "colour"    # Ljava/lang/String;
    .param p7, "_id"    # Ljava/lang/String;
    .param p8, "importBatch"    # Ljava/lang/String;
    .param p9, "name"    # Ljava/lang/String;
    .param p10, "createdDate"    # Ljava/util/Date;
    .param p11, "icon"    # Ljava/lang/String;
    .param p12, "cameraX"    # Ljava/lang/Long;
    .param p13, "cameraY"    # Ljava/lang/Long;
    .param p14, "cameraZ"    # Ljava/lang/Long;
    .param p15, "image"    # Ljava/lang/Long;
    .param p16, "importCameFrom"    # Ljava/lang/String;
    .param p17, "cameraMinZ"    # Ljava/lang/Long;
    .param p18, "modifiedDate"    # Ljava/util/Date;
    .param p19, "emspId"    # Ljava/lang/String;
    .param p20, "createdBy"    # Ljava/lang/String;
    .param p21, "rotationOffset"    # Ljava/lang/Long;
    .param p22, "importKey"    # Ljava/lang/String;
    .param p23, "_namespace"    # Ljava/lang/String;
    .param p24, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/genie_connect/common/db/model/GenieMap;->seqNo:Ljava/lang/Long;

    .line 148
    iput-object p2, p0, Lcom/genie_connect/common/db/model/GenieMap;->imageUrl:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lcom/genie_connect/common/db/model/GenieMap;->modifiedBy:Ljava/lang/String;

    .line 150
    iput-object p4, p0, Lcom/genie_connect/common/db/model/GenieMap;->type:Ljava/lang/Long;

    .line 151
    iput-object p5, p0, Lcom/genie_connect/common/db/model/GenieMap;->id:Ljava/lang/Long;

    .line 152
    iput-object p6, p0, Lcom/genie_connect/common/db/model/GenieMap;->colour:Ljava/lang/String;

    .line 153
    iput-object p7, p0, Lcom/genie_connect/common/db/model/GenieMap;->_id:Ljava/lang/String;

    .line 154
    iput-object p8, p0, Lcom/genie_connect/common/db/model/GenieMap;->importBatch:Ljava/lang/String;

    .line 155
    iput-object p9, p0, Lcom/genie_connect/common/db/model/GenieMap;->name:Ljava/lang/String;

    .line 156
    iput-object p10, p0, Lcom/genie_connect/common/db/model/GenieMap;->createdDate:Ljava/util/Date;

    .line 157
    iput-object p11, p0, Lcom/genie_connect/common/db/model/GenieMap;->icon:Ljava/lang/String;

    .line 158
    iput-object p12, p0, Lcom/genie_connect/common/db/model/GenieMap;->cameraX:Ljava/lang/Long;

    .line 159
    iput-object p13, p0, Lcom/genie_connect/common/db/model/GenieMap;->cameraY:Ljava/lang/Long;

    .line 160
    iput-object p14, p0, Lcom/genie_connect/common/db/model/GenieMap;->cameraZ:Ljava/lang/Long;

    .line 161
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/GenieMap;->image:Ljava/lang/Long;

    .line 162
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/GenieMap;->importCameFrom:Ljava/lang/String;

    .line 163
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/GenieMap;->cameraMinZ:Ljava/lang/Long;

    .line 164
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/GenieMap;->modifiedDate:Ljava/util/Date;

    .line 165
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/GenieMap;->emspId:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/GenieMap;->createdBy:Ljava/lang/String;

    .line 167
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/GenieMap;->rotationOffset:Ljava/lang/Long;

    .line 168
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/GenieMap;->importKey:Ljava/lang/String;

    .line 169
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/GenieMap;->_namespace:Ljava/lang/String;

    .line 170
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/GenieMap;->_dataversion:Ljava/lang/String;

    .line 171
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 67
    sget-object v0, Lcom/genie_connect/common/db/model/GenieMap;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "cameraMinZ"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "cameraX"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "cameraY"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "cameraZ"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "emspId"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "colour"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "imageUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "type"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "rotationOffset"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "seqNo"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/GenieMap;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "maps"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/genie_connect/common/db/model/GenieMap;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "maps"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/genie_connect/common/db/model/GenieMap;->id:Ljava/lang/Long;

    .line 135
    return-void
.end method
