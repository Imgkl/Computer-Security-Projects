.class public Lcom/genie_connect/common/db/model/Tag;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Tag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Tag$Properties;,
        Lcom/genie_connect/common/db/model/Tag$TagSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "tags"

.field public static final TABLE_NAME:Ljava/lang/String; = "tags"


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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Tag;->name:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "modifiedBy"    # Ljava/lang/String;
    .param p2, "noChildren"    # Ljava/lang/Long;
    .param p3, "parent"    # Ljava/lang/String;
    .param p4, "importCameFrom"    # Ljava/lang/String;
    .param p5, "modifiedDate"    # Ljava/util/Date;
    .param p6, "isRootParent"    # Ljava/lang/Boolean;
    .param p7, "_id"    # Ljava/lang/String;
    .param p8, "createdBy"    # Ljava/lang/String;
    .param p9, "importBatch"    # Ljava/lang/String;
    .param p10, "name"    # Ljava/lang/String;
    .param p11, "createdDate"    # Ljava/util/Date;
    .param p12, "importKey"    # Ljava/lang/String;
    .param p13, "_namespace"    # Ljava/lang/String;
    .param p14, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Tag;->modifiedBy:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Tag;->noChildren:Ljava/lang/Long;

    .line 102
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Tag;->parent:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Tag;->importCameFrom:Ljava/lang/String;

    .line 104
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Tag;->modifiedDate:Ljava/util/Date;

    .line 105
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Tag;->isRootParent:Ljava/lang/Boolean;

    .line 106
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Tag;->_id:Ljava/lang/String;

    .line 107
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Tag;->createdBy:Ljava/lang/String;

    .line 108
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Tag;->importBatch:Ljava/lang/String;

    .line 109
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Tag;->name:Ljava/lang/String;

    .line 110
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Tag;->createdDate:Ljava/util/Date;

    .line 111
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Tag;->importKey:Ljava/lang/String;

    .line 112
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Tag;->_namespace:Ljava/lang/String;

    .line 113
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Tag;->_dataversion:Ljava/lang/String;

    .line 114
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 47
    sget-object v0, Lcom/genie_connect/common/db/model/Tag;->COMMON_FIELDS_STRING_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "isRootParent"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "children"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "children"

    sget-object v7, Lcom/genie_connect/common/db/model/Tag;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "parent"

    sget-object v5, Lcom/genie_connect/common/db/model/Tag;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Tag;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "tags"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string/jumbo v0, "tags"

    return-object v0
.end method
