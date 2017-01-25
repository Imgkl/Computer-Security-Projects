.class public Lcom/genie_connect/common/db/model/ArticleGroup;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "ArticleGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/ArticleGroup$Properties;,
        Lcom/genie_connect/common/db/model/ArticleGroup$ArticleGroupSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "articlegroups"

.field public static final TABLE_NAME:Ljava/lang/String; = "articleGroups"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isDashboardFeaturedOnly:Ljava/lang/Boolean;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "isDashboardFeaturedOnly"    # Ljava/lang/Boolean;
    .param p2, "modifiedBy"    # Ljava/lang/String;
    .param p3, "importCameFrom"    # Ljava/lang/String;
    .param p4, "modifiedDate"    # Ljava/util/Date;
    .param p5, "_id"    # Ljava/lang/String;
    .param p6, "createdBy"    # Ljava/lang/String;
    .param p7, "importBatch"    # Ljava/lang/String;
    .param p8, "name"    # Ljava/lang/String;
    .param p9, "createdDate"    # Ljava/util/Date;
    .param p10, "importKey"    # Ljava/lang/String;
    .param p11, "_namespace"    # Ljava/lang/String;
    .param p12, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/genie_connect/common/db/model/ArticleGroup;->isDashboardFeaturedOnly:Ljava/lang/Boolean;

    .line 93
    iput-object p2, p0, Lcom/genie_connect/common/db/model/ArticleGroup;->modifiedBy:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/genie_connect/common/db/model/ArticleGroup;->importCameFrom:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/genie_connect/common/db/model/ArticleGroup;->modifiedDate:Ljava/util/Date;

    .line 96
    iput-object p5, p0, Lcom/genie_connect/common/db/model/ArticleGroup;->_id:Ljava/lang/String;

    .line 97
    iput-object p6, p0, Lcom/genie_connect/common/db/model/ArticleGroup;->createdBy:Ljava/lang/String;

    .line 98
    iput-object p7, p0, Lcom/genie_connect/common/db/model/ArticleGroup;->importBatch:Ljava/lang/String;

    .line 99
    iput-object p8, p0, Lcom/genie_connect/common/db/model/ArticleGroup;->name:Ljava/lang/String;

    .line 100
    iput-object p9, p0, Lcom/genie_connect/common/db/model/ArticleGroup;->createdDate:Ljava/util/Date;

    .line 101
    iput-object p10, p0, Lcom/genie_connect/common/db/model/ArticleGroup;->importKey:Ljava/lang/String;

    .line 102
    iput-object p11, p0, Lcom/genie_connect/common/db/model/ArticleGroup;->_namespace:Ljava/lang/String;

    .line 103
    iput-object p12, p0, Lcom/genie_connect/common/db/model/ArticleGroup;->_dataversion:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/genie_connect/common/db/model/ArticleGroup;->name:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 42
    sget-object v0, Lcom/genie_connect/common/db/model/ArticleGroup;->COMMON_FIELDS_STRING_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "isDashboardFeaturedOnly"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/ArticleGroup;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "articlegroups"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "articleGroups"

    return-object v0
.end method
