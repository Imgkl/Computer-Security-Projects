.class public Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "FavouriteActivityStreamPost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost$Properties;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "favouriteActivityStreamPosts"

.field public static final TABLE_NAME:Ljava/lang/String; = "favouriteActivityStreamPosts"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public activityStreamPost:Ljava/lang/Long;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

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
    .line 81
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->id:Ljava/lang/Long;

    .line 86
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
    .param p10, "activityStreamPostId"    # Ljava/lang/Long;
    .param p11, "importKey"    # Ljava/lang/String;
    .param p12, "_namespace"    # Ljava/lang/String;
    .param p13, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->modifiedBy:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->importCameFrom:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->visitor:Ljava/lang/Long;

    .line 92
    iput-object p4, p0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->modifiedDate:Ljava/util/Date;

    .line 93
    iput-object p5, p0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->id:Ljava/lang/Long;

    .line 94
    iput-object p6, p0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->_id:Ljava/lang/String;

    .line 95
    iput-object p7, p0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->createdBy:Ljava/lang/String;

    .line 96
    iput-object p8, p0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->importBatch:Ljava/lang/String;

    .line 97
    iput-object p9, p0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->createdDate:Ljava/util/Date;

    .line 98
    iput-object p10, p0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->activityStreamPost:Ljava/lang/Long;

    .line 99
    iput-object p11, p0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->importKey:Ljava/lang/String;

    .line 100
    iput-object p12, p0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->_namespace:Ljava/lang/String;

    .line 101
    iput-object p13, p0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->_dataversion:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 106
    sget-object v0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    sget-object v4, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost$Properties;->ActivityStreamPost:Lde/greenrobot/dao/Property;

    iget-object v4, v4, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    sget-object v5, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "favouriteActivityStreamPosts"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "favouriteActivityStreamPosts"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;->id:Ljava/lang/Long;

    .line 78
    return-void
.end method
