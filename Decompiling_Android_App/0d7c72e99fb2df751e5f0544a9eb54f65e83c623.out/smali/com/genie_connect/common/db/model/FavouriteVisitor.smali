.class public Lcom/genie_connect/common/db/model/FavouriteVisitor;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "FavouriteVisitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/FavouriteVisitor$Properties;,
        Lcom/genie_connect/common/db/model/FavouriteVisitor$FavouriteVisitorSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "favouritevisitors"

.field public static final TABLE_NAME:Ljava/lang/String; = "favouriteVisitors"


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

.field public relatedVisitor:Ljava/lang/Long;

.field public visitor:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->id:Ljava/lang/Long;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "modifiedBy"    # Ljava/lang/String;
    .param p2, "importCameFrom"    # Ljava/lang/String;
    .param p3, "relatedVisitor"    # Ljava/lang/Long;
    .param p4, "visitor"    # Ljava/lang/Long;
    .param p5, "modifiedDate"    # Ljava/util/Date;
    .param p6, "id"    # Ljava/lang/Long;
    .param p7, "_id"    # Ljava/lang/String;
    .param p8, "createdBy"    # Ljava/lang/String;
    .param p9, "importBatch"    # Ljava/lang/String;
    .param p10, "createdDate"    # Ljava/util/Date;
    .param p11, "importKey"    # Ljava/lang/String;
    .param p12, "_namespace"    # Ljava/lang/String;
    .param p13, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->modifiedBy:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->importCameFrom:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->relatedVisitor:Ljava/lang/Long;

    .line 107
    iput-object p4, p0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->visitor:Ljava/lang/Long;

    .line 108
    iput-object p5, p0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->modifiedDate:Ljava/util/Date;

    .line 109
    iput-object p6, p0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->id:Ljava/lang/Long;

    .line 110
    iput-object p7, p0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->_id:Ljava/lang/String;

    .line 111
    iput-object p8, p0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->createdBy:Ljava/lang/String;

    .line 112
    iput-object p9, p0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->importBatch:Ljava/lang/String;

    .line 113
    iput-object p10, p0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->createdDate:Ljava/util/Date;

    .line 114
    iput-object p11, p0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->importKey:Ljava/lang/String;

    .line 115
    iput-object p12, p0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->_namespace:Ljava/lang/String;

    .line 116
    iput-object p13, p0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->_dataversion:Ljava/lang/String;

    .line 117
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 44
    sget-object v0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "relatedVisitor"

    sget-object v5, Lcom/genie_connect/common/db/model/FavouriteVisitor;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "visitor"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/FavouriteVisitor;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "favouritevisitors"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "favouriteVisitors"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/genie_connect/common/db/model/FavouriteVisitor;->id:Ljava/lang/Long;

    .line 92
    return-void
.end method
