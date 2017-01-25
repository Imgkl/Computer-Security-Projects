.class public Lcom/genie_connect/common/db/model/ScheduleItem;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "ScheduleItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/ScheduleItem$Properties;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "scheduleitems"

.field public static final TABLE_NAME:Ljava/lang/String; = "scheduleItems"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public briefDescription:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public eventDay:Ljava/lang/String;

.field public fullDescription:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public runningTime_from:Ljava/util/Date;

.field public runningTime_to:Ljava/util/Date;

.field public type:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->id:Ljava/lang/Long;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "modifiedBy"    # Ljava/lang/String;
    .param p3, "importCameFrom"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/Long;
    .param p5, "runningTime_to"    # Ljava/util/Date;
    .param p6, "runningTime_from"    # Ljava/util/Date;
    .param p7, "modifiedDate"    # Ljava/util/Date;
    .param p8, "id"    # Ljava/lang/Long;
    .param p9, "eventDay"    # Ljava/lang/String;
    .param p10, "fullDescription"    # Ljava/lang/String;
    .param p11, "briefDescription"    # Ljava/lang/String;
    .param p12, "_id"    # Ljava/lang/String;
    .param p13, "createdBy"    # Ljava/lang/String;
    .param p14, "name"    # Ljava/lang/String;
    .param p15, "importBatch"    # Ljava/lang/String;
    .param p16, "createdDate"    # Ljava/util/Date;
    .param p17, "importKey"    # Ljava/lang/String;
    .param p18, "_namespace"    # Ljava/lang/String;
    .param p19, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->location:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->modifiedBy:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->importCameFrom:Ljava/lang/String;

    .line 102
    iput-object p4, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->type:Ljava/lang/Long;

    .line 103
    iput-object p5, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->runningTime_to:Ljava/util/Date;

    .line 104
    iput-object p6, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->runningTime_from:Ljava/util/Date;

    .line 105
    iput-object p7, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->modifiedDate:Ljava/util/Date;

    .line 106
    iput-object p8, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->id:Ljava/lang/Long;

    .line 107
    iput-object p9, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->eventDay:Ljava/lang/String;

    .line 108
    iput-object p10, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->fullDescription:Ljava/lang/String;

    .line 109
    iput-object p11, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->briefDescription:Ljava/lang/String;

    .line 110
    iput-object p12, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->_id:Ljava/lang/String;

    .line 111
    iput-object p13, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->createdBy:Ljava/lang/String;

    .line 112
    iput-object p14, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->name:Ljava/lang/String;

    .line 113
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->importBatch:Ljava/lang/String;

    .line 114
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->createdDate:Ljava/util/Date;

    .line 115
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->importKey:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->_namespace:Ljava/lang/String;

    .line 117
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->_dataversion:Ljava/lang/String;

    .line 118
    return-void
.end method


# virtual methods
.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "scheduleitems"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "scheduleItems"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/genie_connect/common/db/model/ScheduleItem;->id:Ljava/lang/Long;

    .line 87
    return-void
.end method
