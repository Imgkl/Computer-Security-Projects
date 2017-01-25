.class public Lcom/genie_connect/common/db/model/Country;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Country.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Country$Properties;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "countries"

.field public static final TABLE_NAME:Ljava/lang/String; = "countries"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

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
    .line 66
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Country;->name:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "createdBy"    # Ljava/lang/String;
    .param p2, "_id"    # Ljava/lang/String;
    .param p3, "modifiedBy"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "importBatch"    # Ljava/lang/String;
    .param p6, "importCameFrom"    # Ljava/lang/String;
    .param p7, "createdDate"    # Ljava/util/Date;
    .param p8, "modifiedDate"    # Ljava/util/Date;
    .param p9, "importKey"    # Ljava/lang/String;
    .param p10, "_namespace"    # Ljava/lang/String;
    .param p11, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Country;->createdBy:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Country;->_id:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Country;->modifiedBy:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Country;->name:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Country;->importBatch:Ljava/lang/String;

    .line 79
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Country;->importCameFrom:Ljava/lang/String;

    .line 80
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Country;->createdDate:Ljava/util/Date;

    .line 81
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Country;->modifiedDate:Ljava/util/Date;

    .line 82
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Country;->importKey:Ljava/lang/String;

    .line 83
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Country;->_namespace:Ljava/lang/String;

    .line 84
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Country;->_dataversion:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "countries"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "countries"

    return-object v0
.end method
