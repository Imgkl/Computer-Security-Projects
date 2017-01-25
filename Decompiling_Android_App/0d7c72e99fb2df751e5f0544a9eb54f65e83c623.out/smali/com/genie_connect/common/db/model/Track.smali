.class public Lcom/genie_connect/common/db/model/Track;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Track$Properties;,
        Lcom/genie_connect/common/db/model/Track$TrackSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "tracks"

.field public static final TABLE_NAME:Ljava/lang/String; = "tracks"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public colour:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public priority:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Track;->name:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "modifiedBy"    # Ljava/lang/String;
    .param p2, "importCameFrom"    # Ljava/lang/String;
    .param p3, "modifiedDate"    # Ljava/util/Date;
    .param p4, "colour"    # Ljava/lang/String;
    .param p5, "_id"    # Ljava/lang/String;
    .param p6, "createdBy"    # Ljava/lang/String;
    .param p7, "priority"    # Ljava/lang/Long;
    .param p8, "importBatch"    # Ljava/lang/String;
    .param p9, "name"    # Ljava/lang/String;
    .param p10, "createdDate"    # Ljava/util/Date;
    .param p11, "importKey"    # Ljava/lang/String;
    .param p12, "_namespace"    # Ljava/lang/String;
    .param p13, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Track;->modifiedBy:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Track;->importCameFrom:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Track;->modifiedDate:Ljava/util/Date;

    .line 99
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Track;->colour:Ljava/lang/String;

    .line 100
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Track;->_id:Ljava/lang/String;

    .line 101
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Track;->createdBy:Ljava/lang/String;

    .line 102
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Track;->priority:Ljava/lang/Long;

    .line 103
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Track;->importBatch:Ljava/lang/String;

    .line 104
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Track;->name:Ljava/lang/String;

    .line 105
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Track;->createdDate:Ljava/util/Date;

    .line 106
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Track;->importKey:Ljava/lang/String;

    .line 107
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Track;->_namespace:Ljava/lang/String;

    .line 108
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Track;->_dataversion:Ljava/lang/String;

    .line 109
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 45
    sget-object v0, Lcom/genie_connect/common/db/model/Track;->COMMON_FIELDS_STRING_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "colour"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "priority"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Track;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "tracks"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "tracks"

    return-object v0
.end method
