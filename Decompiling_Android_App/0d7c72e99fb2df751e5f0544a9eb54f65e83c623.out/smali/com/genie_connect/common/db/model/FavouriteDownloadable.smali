.class public Lcom/genie_connect/common/db/model/FavouriteDownloadable;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "FavouriteDownloadable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/FavouriteDownloadable$Properties;,
        Lcom/genie_connect/common/db/model/FavouriteDownloadable$FavouriteDownloadableSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "favouritedownloadables"

.field public static final TABLE_NAME:Ljava/lang/String; = "favouriteDownloadables"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public downloadable:Ljava/lang/Long;

.field public groupName:Ljava/lang/String;

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
    .line 98
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->id:Ljava/lang/Long;

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "modifiedBy"    # Ljava/lang/String;
    .param p3, "importCameFrom"    # Ljava/lang/String;
    .param p4, "downloadable"    # Ljava/lang/Long;
    .param p5, "visitor"    # Ljava/lang/Long;
    .param p6, "modifiedDate"    # Ljava/util/Date;
    .param p7, "id"    # Ljava/lang/Long;
    .param p8, "_id"    # Ljava/lang/String;
    .param p9, "createdBy"    # Ljava/lang/String;
    .param p10, "importBatch"    # Ljava/lang/String;
    .param p11, "createdDate"    # Ljava/util/Date;
    .param p12, "importKey"    # Ljava/lang/String;
    .param p13, "_namespace"    # Ljava/lang/String;
    .param p14, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->groupName:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->modifiedBy:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->importCameFrom:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->downloadable:Ljava/lang/Long;

    .line 110
    iput-object p5, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->visitor:Ljava/lang/Long;

    .line 111
    iput-object p6, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->modifiedDate:Ljava/util/Date;

    .line 112
    iput-object p7, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->id:Ljava/lang/Long;

    .line 113
    iput-object p8, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->_id:Ljava/lang/String;

    .line 114
    iput-object p9, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->createdBy:Ljava/lang/String;

    .line 115
    iput-object p10, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->importBatch:Ljava/lang/String;

    .line 116
    iput-object p11, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->createdDate:Ljava/util/Date;

    .line 117
    iput-object p12, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->importKey:Ljava/lang/String;

    .line 118
    iput-object p13, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->_namespace:Ljava/lang/String;

    .line 119
    iput-object p14, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->_dataversion:Ljava/lang/String;

    .line 120
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 45
    sget-object v0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "downloadable"

    sget-object v5, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "visitor"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "favouritedownloadables"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "favouriteDownloadables"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;->id:Ljava/lang/Long;

    .line 94
    return-void
.end method
