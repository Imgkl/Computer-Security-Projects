.class public Lcom/genie_connect/common/db/model/Visitorsurvey;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Visitorsurvey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Visitorsurvey$Properties;,
        Lcom/genie_connect/common/db/model/Visitorsurvey$VisitorSurveySyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "visitorsurveys"

.field public static final TABLE_NAME:Ljava/lang/String; = "visitorsurveys"


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

.field public submissionDate:Ljava/util/Date;

.field public submissionStatus:Ljava/lang/Long;

.field public survey:Ljava/lang/Long;

.field public visitor:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->id:Ljava/lang/Long;

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "visitor"    # Ljava/lang/Long;
    .param p3, "survey"    # Ljava/lang/Long;
    .param p4, "submissionStatus"    # Ljava/lang/Long;
    .param p5, "submissionDate"    # Ljava/util/Date;
    .param p6, "_id"    # Ljava/lang/String;
    .param p7, "importKey"    # Ljava/lang/String;
    .param p8, "importCameFrom"    # Ljava/lang/String;
    .param p9, "importBatch"    # Ljava/lang/String;
    .param p10, "modifiedBy"    # Ljava/lang/String;
    .param p11, "modifiedDate"    # Ljava/util/Date;
    .param p12, "createdBy"    # Ljava/lang/String;
    .param p13, "createdDate"    # Ljava/util/Date;
    .param p14, "_namespace"    # Ljava/lang/String;
    .param p15, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->id:Ljava/lang/Long;

    .line 114
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->visitor:Ljava/lang/Long;

    .line 115
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->survey:Ljava/lang/Long;

    .line 116
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->submissionStatus:Ljava/lang/Long;

    .line 117
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->submissionDate:Ljava/util/Date;

    .line 118
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->_id:Ljava/lang/String;

    .line 119
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->importKey:Ljava/lang/String;

    .line 120
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->importCameFrom:Ljava/lang/String;

    .line 121
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->importBatch:Ljava/lang/String;

    .line 122
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->modifiedBy:Ljava/lang/String;

    .line 123
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->modifiedDate:Ljava/util/Date;

    .line 124
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->createdBy:Ljava/lang/String;

    .line 125
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->createdDate:Ljava/util/Date;

    .line 126
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->_namespace:Ljava/lang/String;

    .line 127
    iput-object p15, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->_dataversion:Ljava/lang/String;

    .line 128
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 48
    sget-object v0, Lcom/genie_connect/common/db/model/Visitorsurvey;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "submissionStatus"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "submissionDate"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "survey"

    sget-object v5, Lcom/genie_connect/common/db/model/Visitorsurvey;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v4, "visitor"

    sget-object v5, Lcom/genie_connect/common/db/model/Visitorsurvey;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Visitorsurvey;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string/jumbo v0, "visitorsurveys"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "visitorsurveys"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Visitorsurvey;->id:Ljava/lang/Long;

    .line 101
    return-void
.end method
