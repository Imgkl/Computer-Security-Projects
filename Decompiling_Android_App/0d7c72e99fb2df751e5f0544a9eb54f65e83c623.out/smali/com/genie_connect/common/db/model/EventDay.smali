.class public Lcom/genie_connect/common/db/model/EventDay;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "EventDay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/EventDay$Properties;,
        Lcom/genie_connect/common/db/model/EventDay$EventDaySyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "eventdays"

.field public static final TABLE_NAME:Ljava/lang/String; = "eventDays"


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

.field public runningTime_from:Ljava/util/Date;

.field public runningTime_to:Ljava/util/Date;

.field public timezoneOffset:Ljava/lang/Long;


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
    iput-object p1, p0, Lcom/genie_connect/common/db/model/EventDay;->name:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "modifiedBy"    # Ljava/lang/String;
    .param p2, "timezoneOffset"    # Ljava/lang/Long;
    .param p3, "importCameFrom"    # Ljava/lang/String;
    .param p4, "runningTime_to"    # Ljava/util/Date;
    .param p5, "runningTime_from"    # Ljava/util/Date;
    .param p6, "modifiedDate"    # Ljava/util/Date;
    .param p7, "_id"    # Ljava/lang/String;
    .param p8, "createdBy"    # Ljava/lang/String;
    .param p9, "importBatch"    # Ljava/lang/String;
    .param p10, "name"    # Ljava/lang/String;
    .param p11, "createdDate"    # Ljava/util/Date;
    .param p12, "importKey"    # Ljava/lang/String;
    .param p13, "_namespace"    # Ljava/lang/String;
    .param p14, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/genie_connect/common/db/model/EventDay;->modifiedBy:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcom/genie_connect/common/db/model/EventDay;->timezoneOffset:Ljava/lang/Long;

    .line 98
    iput-object p3, p0, Lcom/genie_connect/common/db/model/EventDay;->importCameFrom:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lcom/genie_connect/common/db/model/EventDay;->runningTime_to:Ljava/util/Date;

    .line 100
    iput-object p5, p0, Lcom/genie_connect/common/db/model/EventDay;->runningTime_from:Ljava/util/Date;

    .line 101
    iput-object p6, p0, Lcom/genie_connect/common/db/model/EventDay;->modifiedDate:Ljava/util/Date;

    .line 102
    iput-object p7, p0, Lcom/genie_connect/common/db/model/EventDay;->_id:Ljava/lang/String;

    .line 103
    iput-object p8, p0, Lcom/genie_connect/common/db/model/EventDay;->createdBy:Ljava/lang/String;

    .line 104
    iput-object p9, p0, Lcom/genie_connect/common/db/model/EventDay;->importBatch:Ljava/lang/String;

    .line 105
    iput-object p10, p0, Lcom/genie_connect/common/db/model/EventDay;->name:Ljava/lang/String;

    .line 106
    iput-object p11, p0, Lcom/genie_connect/common/db/model/EventDay;->createdDate:Ljava/util/Date;

    .line 107
    iput-object p12, p0, Lcom/genie_connect/common/db/model/EventDay;->importKey:Ljava/lang/String;

    .line 108
    iput-object p13, p0, Lcom/genie_connect/common/db/model/EventDay;->_namespace:Ljava/lang/String;

    .line 109
    iput-object p14, p0, Lcom/genie_connect/common/db/model/EventDay;->_dataversion:Ljava/lang/String;

    .line 110
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 45
    sget-object v0, Lcom/genie_connect/common/db/model/EventDay;->COMMON_FIELDS_STRING_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "runningTime"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->RUNNING_TIME_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/EventDay;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "eventdays"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "eventDays"

    return-object v0
.end method
