.class public Lcom/genie_connect/common/db/model/Meeting;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Meeting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Meeting$Properties;,
        Lcom/genie_connect/common/db/model/Meeting$MeetingSyncableFields;,
        Lcom/genie_connect/common/db/model/Meeting$MeetingType;,
        Lcom/genie_connect/common/db/model/Meeting$MeetingStatus;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "meetings"

.field public static final TABLE_NAME:Ljava/lang/String; = "meetings"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public eventDay:Ljava/lang/String;

.field public exhibitor:Ljava/lang/Long;

.field public fullDescription:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isDeletable:Ljava/lang/Boolean;

.field public location:Ljava/lang/String;

.field public meetingLocation:Ljava/lang/String;

.field public meetingRequestMessage:Ljava/lang/Long;

.field public meetingType:Ljava/lang/Long;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public runningTime_from:Ljava/util/Date;

.field public runningTime_to:Ljava/util/Date;

.field public status:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Meeting;->id:Ljava/lang/Long;

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "modifiedBy"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/Long;
    .param p4, "eventDay"    # Ljava/lang/String;
    .param p5, "fullDescription"    # Ljava/lang/String;
    .param p6, "_id"    # Ljava/lang/String;
    .param p7, "importBatch"    # Ljava/lang/String;
    .param p8, "name"    # Ljava/lang/String;
    .param p9, "isDeletable"    # Ljava/lang/Boolean;
    .param p10, "createdDate"    # Ljava/util/Date;
    .param p11, "status"    # Ljava/lang/Long;
    .param p12, "importCameFrom"    # Ljava/lang/String;
    .param p13, "runningTime_to"    # Ljava/util/Date;
    .param p14, "runningTime_from"    # Ljava/util/Date;
    .param p15, "modifiedDate"    # Ljava/util/Date;
    .param p16, "meetingRequestMessage"    # Ljava/lang/Long;
    .param p17, "createdBy"    # Ljava/lang/String;
    .param p18, "meetingType"    # Ljava/lang/Long;
    .param p19, "meetingLocation"    # Ljava/lang/String;
    .param p20, "exhibitor"    # Ljava/lang/Long;
    .param p21, "importKey"    # Ljava/lang/String;
    .param p22, "_namespace"    # Ljava/lang/String;
    .param p23, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Meeting;->location:Ljava/lang/String;

    .line 162
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Meeting;->modifiedBy:Ljava/lang/String;

    .line 163
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Meeting;->id:Ljava/lang/Long;

    .line 164
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Meeting;->eventDay:Ljava/lang/String;

    .line 165
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Meeting;->fullDescription:Ljava/lang/String;

    .line 166
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Meeting;->_id:Ljava/lang/String;

    .line 167
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Meeting;->importBatch:Ljava/lang/String;

    .line 168
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Meeting;->name:Ljava/lang/String;

    .line 169
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Meeting;->isDeletable:Ljava/lang/Boolean;

    .line 170
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Meeting;->createdDate:Ljava/util/Date;

    .line 171
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Meeting;->status:Ljava/lang/Long;

    .line 172
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Meeting;->importCameFrom:Ljava/lang/String;

    .line 173
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Meeting;->runningTime_to:Ljava/util/Date;

    .line 174
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Meeting;->runningTime_from:Ljava/util/Date;

    .line 175
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Meeting;->modifiedDate:Ljava/util/Date;

    .line 176
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Meeting;->meetingRequestMessage:Ljava/lang/Long;

    .line 177
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Meeting;->createdBy:Ljava/lang/String;

    .line 178
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Meeting;->meetingType:Ljava/lang/Long;

    .line 179
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Meeting;->meetingLocation:Ljava/lang/String;

    .line 180
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Meeting;->exhibitor:Ljava/lang/Long;

    .line 181
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Meeting;->importKey:Ljava/lang/String;

    .line 182
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Meeting;->_namespace:Ljava/lang/String;

    .line 183
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Meeting;->_dataversion:Ljava/lang/String;

    .line 184
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 81
    sget-object v0, Lcom/genie_connect/common/db/model/Meeting;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0xc

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "fullDescription"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "isDeletable"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "location"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "meetingType"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "status"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "approvedVisitors"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "approvedVisitors"

    sget-object v7, Lcom/genie_connect/common/db/model/Meeting;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string/jumbo v4, "visitors"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v6, "visitors"

    sget-object v7, Lcom/genie_connect/common/db/model/Meeting;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string/jumbo v4, "visitorNames"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v6, "visitorNames"

    sget-object v7, Lcom/genie_connect/common/db/model/Meeting;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "runningTime"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->RUNNING_TIME_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "eventDay"

    sget-object v5, Lcom/genie_connect/common/db/model/Meeting;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "exhibitor"

    sget-object v5, Lcom/genie_connect/common/db/model/Meeting;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Meeting;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "meetings"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Meeting;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "meetings"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Meeting;->id:Ljava/lang/Long;

    .line 149
    return-void
.end method
