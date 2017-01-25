.class public Lcom/genie_connect/common/db/model/DataVersion;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "DataVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/DataVersion$Properties;,
        Lcom/genie_connect/common/db/model/DataVersion$DataVersionSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "dataversions"

.field public static final TABLE_NAME:Ljava/lang/String; = "dataVersions"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public approximateJsonSize:Ljava/lang/Long;

.field public approximatePlistSize:Ljava/lang/Long;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public fileFormatVersionJson:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public jsonDeletes:Ljava/lang/String;

.field public jsonUpdates:Ljava/lang/String;

.field public liveStatus:Ljava/lang/Long;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public plistDeletes:Ljava/lang/String;

.field public plistUpdates:Ljava/lang/String;

.field public scheduledDate:Ljava/util/Date;

.field public scheduledLiveStatus:Ljava/lang/Long;

.field public scheduledTaskName:Ljava/lang/String;

.field public task:Ljava/lang/Long;

.field public timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "liveStatus"    # Ljava/lang/Long;
    .param p2, "scheduledTaskName"    # Ljava/lang/String;
    .param p3, "jsonDeletes"    # Ljava/lang/String;
    .param p4, "task"    # Ljava/lang/Long;
    .param p5, "modifiedBy"    # Ljava/lang/String;
    .param p6, "approximateJsonSize"    # Ljava/lang/Long;
    .param p7, "approximatePlistSize"    # Ljava/lang/Long;
    .param p8, "importCameFrom"    # Ljava/lang/String;
    .param p9, "modifiedDate"    # Ljava/util/Date;
    .param p10, "timestamp"    # Ljava/util/Date;
    .param p11, "scheduledDate"    # Ljava/util/Date;
    .param p12, "fileFormatVersionJson"    # Ljava/lang/Long;
    .param p13, "plistUpdates"    # Ljava/lang/String;
    .param p14, "scheduledLiveStatus"    # Ljava/lang/Long;
    .param p15, "_id"    # Ljava/lang/String;
    .param p16, "createdBy"    # Ljava/lang/String;
    .param p17, "name"    # Ljava/lang/String;
    .param p18, "importBatch"    # Ljava/lang/String;
    .param p19, "plistDeletes"    # Ljava/lang/String;
    .param p20, "jsonUpdates"    # Ljava/lang/String;
    .param p21, "createdDate"    # Ljava/util/Date;
    .param p22, "importKey"    # Ljava/lang/String;
    .param p23, "_namespace"    # Ljava/lang/String;
    .param p24, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/genie_connect/common/db/model/DataVersion;->liveStatus:Ljava/lang/Long;

    .line 117
    iput-object p2, p0, Lcom/genie_connect/common/db/model/DataVersion;->scheduledTaskName:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lcom/genie_connect/common/db/model/DataVersion;->jsonDeletes:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lcom/genie_connect/common/db/model/DataVersion;->task:Ljava/lang/Long;

    .line 120
    iput-object p5, p0, Lcom/genie_connect/common/db/model/DataVersion;->modifiedBy:Ljava/lang/String;

    .line 121
    iput-object p6, p0, Lcom/genie_connect/common/db/model/DataVersion;->approximateJsonSize:Ljava/lang/Long;

    .line 122
    iput-object p7, p0, Lcom/genie_connect/common/db/model/DataVersion;->approximatePlistSize:Ljava/lang/Long;

    .line 123
    iput-object p8, p0, Lcom/genie_connect/common/db/model/DataVersion;->importCameFrom:Ljava/lang/String;

    .line 124
    iput-object p9, p0, Lcom/genie_connect/common/db/model/DataVersion;->modifiedDate:Ljava/util/Date;

    .line 125
    iput-object p10, p0, Lcom/genie_connect/common/db/model/DataVersion;->timestamp:Ljava/util/Date;

    .line 126
    iput-object p11, p0, Lcom/genie_connect/common/db/model/DataVersion;->scheduledDate:Ljava/util/Date;

    .line 127
    iput-object p12, p0, Lcom/genie_connect/common/db/model/DataVersion;->fileFormatVersionJson:Ljava/lang/Long;

    .line 128
    iput-object p13, p0, Lcom/genie_connect/common/db/model/DataVersion;->plistUpdates:Ljava/lang/String;

    .line 129
    iput-object p14, p0, Lcom/genie_connect/common/db/model/DataVersion;->scheduledLiveStatus:Ljava/lang/Long;

    .line 130
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/DataVersion;->_id:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/DataVersion;->createdBy:Ljava/lang/String;

    .line 132
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/DataVersion;->name:Ljava/lang/String;

    .line 133
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/DataVersion;->importBatch:Ljava/lang/String;

    .line 134
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/DataVersion;->plistDeletes:Ljava/lang/String;

    .line 135
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/DataVersion;->jsonUpdates:Ljava/lang/String;

    .line 136
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/DataVersion;->createdDate:Ljava/util/Date;

    .line 137
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/DataVersion;->importKey:Ljava/lang/String;

    .line 138
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/DataVersion;->_namespace:Ljava/lang/String;

    .line 139
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/DataVersion;->_dataversion:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/genie_connect/common/db/model/DataVersion;->name:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 54
    sget-object v0, Lcom/genie_connect/common/db/model/DataVersion;->COMMON_FIELDS_STRING_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "liveStatus"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "timestamp"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/DataVersion;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "dataversions"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "dataVersions"

    return-object v0
.end method
