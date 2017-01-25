.class public Lcom/genie_connect/common/db/model/FavouriteExhibitor;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "FavouriteExhibitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/FavouriteExhibitor$Properties;,
        Lcom/genie_connect/common/db/model/FavouriteExhibitor$FavouriteExhibitorSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "favouriteExhibitors"

.field public static final TABLE_NAME:Ljava/lang/String; = "favouriteExhibitors"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public exhibitor:Ljava/lang/Long;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

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
    iput-object p1, p0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->id:Ljava/lang/Long;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "modifiedBy"    # Ljava/lang/String;
    .param p2, "importCameFrom"    # Ljava/lang/String;
    .param p3, "visitor"    # Ljava/lang/Long;
    .param p4, "modifiedDate"    # Ljava/util/Date;
    .param p5, "id"    # Ljava/lang/Long;
    .param p6, "_id"    # Ljava/lang/String;
    .param p7, "createdBy"    # Ljava/lang/String;
    .param p8, "importBatch"    # Ljava/lang/String;
    .param p9, "createdDate"    # Ljava/util/Date;
    .param p10, "exhibitor"    # Ljava/lang/Long;
    .param p11, "importKey"    # Ljava/lang/String;
    .param p12, "_namespace"    # Ljava/lang/String;
    .param p13, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->modifiedBy:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->importCameFrom:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->visitor:Ljava/lang/Long;

    .line 107
    iput-object p4, p0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->modifiedDate:Ljava/util/Date;

    .line 108
    iput-object p5, p0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->id:Ljava/lang/Long;

    .line 109
    iput-object p6, p0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->_id:Ljava/lang/String;

    .line 110
    iput-object p7, p0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->createdBy:Ljava/lang/String;

    .line 111
    iput-object p8, p0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->importBatch:Ljava/lang/String;

    .line 112
    iput-object p9, p0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->createdDate:Ljava/util/Date;

    .line 113
    iput-object p10, p0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->exhibitor:Ljava/lang/Long;

    .line 114
    iput-object p11, p0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->importKey:Ljava/lang/String;

    .line 115
    iput-object p12, p0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->_namespace:Ljava/lang/String;

    .line 116
    iput-object p13, p0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->_dataversion:Ljava/lang/String;

    .line 117
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 44
    sget-object v0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "exhibitor"

    sget-object v5, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "visitor"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "favouriteExhibitors"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "favouriteExhibitors"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;->id:Ljava/lang/Long;

    .line 92
    return-void
.end method
