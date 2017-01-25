.class public Lcom/genie_connect/common/db/model/ExhibitorType;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "ExhibitorType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/ExhibitorType$Properties;,
        Lcom/genie_connect/common/db/model/ExhibitorType$ExhibitorTypeSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "exhibitortypes"

.field public static final TABLE_NAME:Ljava/lang/String; = "exhibitorTypes"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public colour:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public icon:Ljava/lang/Long;

.field public iconUrl:Ljava/lang/String;

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
    .line 86
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/Long;
    .param p2, "modifiedBy"    # Ljava/lang/String;
    .param p3, "iconUrl"    # Ljava/lang/String;
    .param p4, "importCameFrom"    # Ljava/lang/String;
    .param p5, "modifiedDate"    # Ljava/util/Date;
    .param p6, "colour"    # Ljava/lang/String;
    .param p7, "_id"    # Ljava/lang/String;
    .param p8, "createdBy"    # Ljava/lang/String;
    .param p9, "importBatch"    # Ljava/lang/String;
    .param p10, "name"    # Ljava/lang/String;
    .param p11, "createdDate"    # Ljava/util/Date;
    .param p12, "importKey"    # Ljava/lang/String;
    .param p13, "_namespace"    # Ljava/lang/String;
    .param p14, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/genie_connect/common/db/model/ExhibitorType;->icon:Ljava/lang/Long;

    .line 95
    iput-object p2, p0, Lcom/genie_connect/common/db/model/ExhibitorType;->modifiedBy:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/genie_connect/common/db/model/ExhibitorType;->iconUrl:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/genie_connect/common/db/model/ExhibitorType;->importCameFrom:Ljava/lang/String;

    .line 98
    iput-object p5, p0, Lcom/genie_connect/common/db/model/ExhibitorType;->modifiedDate:Ljava/util/Date;

    .line 99
    iput-object p6, p0, Lcom/genie_connect/common/db/model/ExhibitorType;->colour:Ljava/lang/String;

    .line 100
    iput-object p7, p0, Lcom/genie_connect/common/db/model/ExhibitorType;->_id:Ljava/lang/String;

    .line 101
    iput-object p8, p0, Lcom/genie_connect/common/db/model/ExhibitorType;->createdBy:Ljava/lang/String;

    .line 102
    iput-object p9, p0, Lcom/genie_connect/common/db/model/ExhibitorType;->importBatch:Ljava/lang/String;

    .line 103
    iput-object p10, p0, Lcom/genie_connect/common/db/model/ExhibitorType;->name:Ljava/lang/String;

    .line 104
    iput-object p11, p0, Lcom/genie_connect/common/db/model/ExhibitorType;->createdDate:Ljava/util/Date;

    .line 105
    iput-object p12, p0, Lcom/genie_connect/common/db/model/ExhibitorType;->importKey:Ljava/lang/String;

    .line 106
    iput-object p13, p0, Lcom/genie_connect/common/db/model/ExhibitorType;->_namespace:Ljava/lang/String;

    .line 107
    iput-object p14, p0, Lcom/genie_connect/common/db/model/ExhibitorType;->_dataversion:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/genie_connect/common/db/model/ExhibitorType;->name:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 43
    sget-object v0, Lcom/genie_connect/common/db/model/ExhibitorType;->COMMON_FIELDS_STRING_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "colour"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/ExhibitorType;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "exhibitortypes"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "exhibitorTypes"

    return-object v0
.end method
