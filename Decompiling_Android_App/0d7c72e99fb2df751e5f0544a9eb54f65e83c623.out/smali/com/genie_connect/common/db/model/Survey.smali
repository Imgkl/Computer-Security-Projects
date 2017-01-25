.class public Lcom/genie_connect/common/db/model/Survey;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Survey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Survey$Properties;,
        Lcom/genie_connect/common/db/model/Survey$SurveySyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "surveys"

.field public static final TABLE_NAME:Ljava/lang/String; = "surveys"


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

.field public permissionGroup:Ljava/lang/Long;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Survey;->id:Ljava/lang/Long;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "permissionGroup"    # Ljava/lang/Long;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "_id"    # Ljava/lang/String;
    .param p6, "importKey"    # Ljava/lang/String;
    .param p7, "importCameFrom"    # Ljava/lang/String;
    .param p8, "importBatch"    # Ljava/lang/String;
    .param p9, "modifiedBy"    # Ljava/lang/String;
    .param p10, "modifiedDate"    # Ljava/util/Date;
    .param p11, "createdBy"    # Ljava/lang/String;
    .param p12, "createdDate"    # Ljava/util/Date;
    .param p13, "_namespace"    # Ljava/lang/String;
    .param p14, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Survey;->id:Ljava/lang/Long;

    .line 113
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Survey;->name:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Survey;->permissionGroup:Ljava/lang/Long;

    .line 115
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Survey;->url:Ljava/lang/String;

    .line 116
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Survey;->_id:Ljava/lang/String;

    .line 117
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Survey;->importKey:Ljava/lang/String;

    .line 118
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Survey;->importCameFrom:Ljava/lang/String;

    .line 119
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Survey;->importBatch:Ljava/lang/String;

    .line 120
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Survey;->modifiedBy:Ljava/lang/String;

    .line 121
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Survey;->modifiedDate:Ljava/util/Date;

    .line 122
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Survey;->createdBy:Ljava/lang/String;

    .line 123
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Survey;->createdDate:Ljava/util/Date;

    .line 124
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Survey;->_namespace:Ljava/lang/String;

    .line 125
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Survey;->_dataversion:Ljava/lang/String;

    .line 126
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 47
    sget-object v0, Lcom/genie_connect/common/db/model/Survey;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

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

    const-string/jumbo v4, "url"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "permissionGroup"

    sget-object v5, Lcom/genie_connect/common/db/model/Survey;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Survey;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "surveys"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Survey;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "surveys"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Survey;->id:Ljava/lang/Long;

    .line 100
    return-void
.end method
