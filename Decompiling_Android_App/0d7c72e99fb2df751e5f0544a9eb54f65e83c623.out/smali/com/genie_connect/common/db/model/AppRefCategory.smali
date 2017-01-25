.class public Lcom/genie_connect/common/db/model/AppRefCategory;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "AppRefCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/AppRefCategory$Properties;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "appRefCategories"

.field public static final TABLE_NAME:Ljava/lang/String; = "appRefCategories"


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

.field public liveStatus:Ljava/lang/Long;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public noChildren:Ljava/lang/Long;

.field public parent:Ljava/lang/String;

.field public scheduledDate:Ljava/util/Date;

.field public scheduledLiveStatus:Ljava/lang/Long;

.field public scheduledTaskName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "liveStatus"    # Ljava/lang/Long;
    .param p2, "scheduledTaskName"    # Ljava/lang/String;
    .param p3, "modifiedBy"    # Ljava/lang/String;
    .param p4, "noChildren"    # Ljava/lang/Long;
    .param p5, "parent"    # Ljava/lang/String;
    .param p6, "importCameFrom"    # Ljava/lang/String;
    .param p7, "modifiedDate"    # Ljava/util/Date;
    .param p8, "scheduledDate"    # Ljava/util/Date;
    .param p9, "isRootParent"    # Ljava/lang/Boolean;
    .param p10, "scheduledLiveStatus"    # Ljava/lang/Long;
    .param p11, "_id"    # Ljava/lang/String;
    .param p12, "createdBy"    # Ljava/lang/String;
    .param p13, "name"    # Ljava/lang/String;
    .param p14, "importBatch"    # Ljava/lang/String;
    .param p15, "createdDate"    # Ljava/util/Date;
    .param p16, "importKey"    # Ljava/lang/String;
    .param p17, "_namespace"    # Ljava/lang/String;
    .param p18, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->liveStatus:Ljava/lang/Long;

    .line 89
    iput-object p2, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->scheduledTaskName:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->modifiedBy:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->noChildren:Ljava/lang/Long;

    .line 92
    iput-object p5, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->parent:Ljava/lang/String;

    .line 93
    iput-object p6, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->importCameFrom:Ljava/lang/String;

    .line 94
    iput-object p7, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->modifiedDate:Ljava/util/Date;

    .line 95
    iput-object p8, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->scheduledDate:Ljava/util/Date;

    .line 96
    iput-object p9, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->isRootParent:Ljava/lang/Boolean;

    .line 97
    iput-object p10, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->scheduledLiveStatus:Ljava/lang/Long;

    .line 98
    iput-object p11, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->_id:Ljava/lang/String;

    .line 99
    iput-object p12, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->createdBy:Ljava/lang/String;

    .line 100
    iput-object p13, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->name:Ljava/lang/String;

    .line 101
    iput-object p14, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->importBatch:Ljava/lang/String;

    .line 102
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->createdDate:Ljava/util/Date;

    .line 103
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->importKey:Ljava/lang/String;

    .line 104
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->_namespace:Ljava/lang/String;

    .line 105
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->_dataversion:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/genie_connect/common/db/model/AppRefCategory;->name:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "appRefCategories"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "appRefCategories"

    return-object v0
.end method
