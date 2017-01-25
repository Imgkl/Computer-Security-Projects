.class public Lcom/genie_connect/common/db/model/Downloadable;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Downloadable.java"

# interfaces
.implements Lcom/genie_connect/common/db/model/interfaces/Favouritable;
.implements Lcom/genie_connect/common/db/model/interfaces/Notable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Downloadable$Properties;,
        Lcom/genie_connect/common/db/model/Downloadable$DownloadableSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "downloadables"

.field public static final TABLE_NAME:Ljava/lang/String; = "downloadables"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public assosiatedDataFile:Ljava/lang/Long;

.field public blobKey:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public downloadUrl:Ljava/lang/String;

.field public exhibitor:Ljava/lang/Long;

.field public fileName:Ljava/lang/String;

.field public fileType:Ljava/lang/String;

.field public fullDescription:Ljava/lang/String;

.field public hasNote:Ljava/lang/Boolean;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isFavourite:Ljava/lang/Boolean;

.field public md5Hash:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public permissionGroup:Ljava/lang/Long;

.field public size:Ljava/lang/Long;

.field public thumbnail:Ljava/lang/Long;

.field public thumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Downloadable;->id:Ljava/lang/Long;

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p1, "modifiedBy"    # Ljava/lang/String;
    .param p2, "downloadUrl"    # Ljava/lang/String;
    .param p3, "md5Hash"    # Ljava/lang/String;
    .param p4, "id"    # Ljava/lang/Long;
    .param p5, "fullDescription"    # Ljava/lang/String;
    .param p6, "_id"    # Ljava/lang/String;
    .param p7, "importBatch"    # Ljava/lang/String;
    .param p8, "name"    # Ljava/lang/String;
    .param p9, "thumbnailUrl"    # Ljava/lang/String;
    .param p10, "createdDate"    # Ljava/util/Date;
    .param p11, "mimeType"    # Ljava/lang/String;
    .param p12, "fileType"    # Ljava/lang/String;
    .param p13, "blobKey"    # Ljava/lang/String;
    .param p14, "assosiatedDataFile"    # Ljava/lang/Long;
    .param p15, "importCameFrom"    # Ljava/lang/String;
    .param p16, "modifiedDate"    # Ljava/util/Date;
    .param p17, "size"    # Ljava/lang/Long;
    .param p18, "thumbnail"    # Ljava/lang/Long;
    .param p19, "createdBy"    # Ljava/lang/String;
    .param p20, "fileName"    # Ljava/lang/String;
    .param p21, "exhibitor"    # Ljava/lang/Long;
    .param p22, "importKey"    # Ljava/lang/String;
    .param p23, "permissionGroup"    # Ljava/lang/Long;
    .param p24, "_namespace"    # Ljava/lang/String;
    .param p25, "isFavourite"    # Ljava/lang/Boolean;
    .param p26, "hasNote"    # Ljava/lang/Boolean;
    .param p27, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Downloadable;->modifiedBy:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Downloadable;->downloadUrl:Ljava/lang/String;

    .line 153
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Downloadable;->md5Hash:Ljava/lang/String;

    .line 154
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Downloadable;->id:Ljava/lang/Long;

    .line 155
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Downloadable;->fullDescription:Ljava/lang/String;

    .line 156
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Downloadable;->_id:Ljava/lang/String;

    .line 157
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Downloadable;->importBatch:Ljava/lang/String;

    .line 158
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Downloadable;->name:Ljava/lang/String;

    .line 159
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Downloadable;->thumbnailUrl:Ljava/lang/String;

    .line 160
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Downloadable;->createdDate:Ljava/util/Date;

    .line 161
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Downloadable;->mimeType:Ljava/lang/String;

    .line 162
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Downloadable;->fileType:Ljava/lang/String;

    .line 163
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Downloadable;->blobKey:Ljava/lang/String;

    .line 164
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Downloadable;->assosiatedDataFile:Ljava/lang/Long;

    .line 165
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Downloadable;->importCameFrom:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Downloadable;->modifiedDate:Ljava/util/Date;

    .line 167
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Downloadable;->size:Ljava/lang/Long;

    .line 168
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Downloadable;->thumbnail:Ljava/lang/Long;

    .line 169
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Downloadable;->createdBy:Ljava/lang/String;

    .line 170
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Downloadable;->fileName:Ljava/lang/String;

    .line 171
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Downloadable;->exhibitor:Ljava/lang/Long;

    .line 172
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Downloadable;->importKey:Ljava/lang/String;

    .line 173
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Downloadable;->permissionGroup:Ljava/lang/Long;

    .line 174
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Downloadable;->_namespace:Ljava/lang/String;

    .line 175
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Downloadable;->isFavourite:Ljava/lang/Boolean;

    .line 176
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Downloadable;->hasNote:Ljava/lang/Boolean;

    .line 177
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Downloadable;->_dataversion:Ljava/lang/String;

    .line 178
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 69
    sget-object v0, Lcom/genie_connect/common/db/model/Downloadable;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "downloadUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "fileName"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "size"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "fileType"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "fullDescription"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "md5Hash"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "mimeType"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "thumbnailUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "permissionGroup"

    sget-object v5, Lcom/genie_connect/common/db/model/Downloadable;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Downloadable;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "downloadables"

    return-object v0
.end method

.method public getHasNote()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Downloadable;->hasNote:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Downloadable;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsFavourite()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Downloadable;->isFavourite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "downloadables"

    return-object v0
.end method

.method public setHasNote(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Downloadable;->hasNote:Ljava/lang/Boolean;

    .line 195
    return-void
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Downloadable;->id:Ljava/lang/Long;

    .line 139
    return-void
.end method

.method public setIsFavourite(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Downloadable;->isFavourite:Ljava/lang/Boolean;

    .line 187
    return-void
.end method
