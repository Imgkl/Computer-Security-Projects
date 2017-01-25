.class public Lcom/genie_connect/common/db/model/AgendaItem;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "AgendaItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/AgendaItem$Properties;,
        Lcom/genie_connect/common/db/model/AgendaItem$AgendaItemTypes;,
        Lcom/genie_connect/common/db/model/AgendaItem$AgendaItemSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "agendaitems"

.field public static final TABLE_NAME:Ljava/lang/String; = "agendaItems"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public eventDay:Ljava/lang/String;

.field public fullDescription:Ljava/lang/String;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isDeletable:Ljava/lang/Boolean;

.field public isWaitlisted:Ljava/lang/Boolean;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public relatedMeeting:Ljava/lang/Long;

.field public relatedSession:Ljava/lang/Long;

.field public relatedSubSession:Ljava/lang/Long;

.field public runningTime_from:Ljava/util/Date;

.field public runningTime_to:Ljava/util/Date;

.field public type:Ljava/lang/String;

.field public visitor:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/genie_connect/common/db/model/AgendaItem;->id:Ljava/lang/Long;

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "modifiedBy"    # Ljava/lang/String;
    .param p2, "relatedSession"    # Ljava/lang/Long;
    .param p3, "importCameFrom"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "runningTime_to"    # Ljava/util/Date;
    .param p6, "runningTime_from"    # Ljava/util/Date;
    .param p7, "visitor"    # Ljava/lang/Long;
    .param p8, "modifiedDate"    # Ljava/util/Date;
    .param p9, "id"    # Ljava/lang/Long;
    .param p10, "eventDay"    # Ljava/lang/String;
    .param p11, "fullDescription"    # Ljava/lang/String;
    .param p12, "_id"    # Ljava/lang/String;
    .param p13, "createdBy"    # Ljava/lang/String;
    .param p14, "relatedSubSession"    # Ljava/lang/Long;
    .param p15, "relatedMeeting"    # Ljava/lang/Long;
    .param p16, "name"    # Ljava/lang/String;
    .param p17, "importBatch"    # Ljava/lang/String;
    .param p18, "isDeletable"    # Ljava/lang/Boolean;
    .param p19, "isWaitlisted"    # Ljava/lang/Boolean;
    .param p20, "createdDate"    # Ljava/util/Date;
    .param p21, "importKey"    # Ljava/lang/String;
    .param p22, "_namespace"    # Ljava/lang/String;
    .param p23, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/genie_connect/common/db/model/AgendaItem;->modifiedBy:Ljava/lang/String;

    .line 153
    iput-object p2, p0, Lcom/genie_connect/common/db/model/AgendaItem;->relatedSession:Ljava/lang/Long;

    .line 154
    iput-object p3, p0, Lcom/genie_connect/common/db/model/AgendaItem;->importCameFrom:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Lcom/genie_connect/common/db/model/AgendaItem;->type:Ljava/lang/String;

    .line 156
    iput-object p5, p0, Lcom/genie_connect/common/db/model/AgendaItem;->runningTime_to:Ljava/util/Date;

    .line 157
    iput-object p6, p0, Lcom/genie_connect/common/db/model/AgendaItem;->runningTime_from:Ljava/util/Date;

    .line 158
    iput-object p7, p0, Lcom/genie_connect/common/db/model/AgendaItem;->visitor:Ljava/lang/Long;

    .line 159
    iput-object p8, p0, Lcom/genie_connect/common/db/model/AgendaItem;->modifiedDate:Ljava/util/Date;

    .line 160
    iput-object p9, p0, Lcom/genie_connect/common/db/model/AgendaItem;->id:Ljava/lang/Long;

    .line 161
    iput-object p10, p0, Lcom/genie_connect/common/db/model/AgendaItem;->eventDay:Ljava/lang/String;

    .line 162
    iput-object p11, p0, Lcom/genie_connect/common/db/model/AgendaItem;->fullDescription:Ljava/lang/String;

    .line 163
    iput-object p12, p0, Lcom/genie_connect/common/db/model/AgendaItem;->_id:Ljava/lang/String;

    .line 164
    iput-object p13, p0, Lcom/genie_connect/common/db/model/AgendaItem;->createdBy:Ljava/lang/String;

    .line 165
    iput-object p14, p0, Lcom/genie_connect/common/db/model/AgendaItem;->relatedSubSession:Ljava/lang/Long;

    .line 166
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AgendaItem;->relatedMeeting:Ljava/lang/Long;

    .line 167
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AgendaItem;->name:Ljava/lang/String;

    .line 168
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AgendaItem;->importBatch:Ljava/lang/String;

    .line 169
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AgendaItem;->isDeletable:Ljava/lang/Boolean;

    .line 170
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AgendaItem;->isWaitlisted:Ljava/lang/Boolean;

    .line 171
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AgendaItem;->createdDate:Ljava/util/Date;

    .line 172
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AgendaItem;->importKey:Ljava/lang/String;

    .line 173
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AgendaItem;->_namespace:Ljava/lang/String;

    .line 174
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/AgendaItem;->_dataversion:Ljava/lang/String;

    .line 175
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 51
    sget-object v0, Lcom/genie_connect/common/db/model/AgendaItem;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0xb

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

    const-string v4, "isWaitlisted"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "type"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "visitor"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "runningTime"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->RUNNING_TIME_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "eventDay"

    sget-object v5, Lcom/genie_connect/common/db/model/AgendaItem;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "relatedMeeting"

    sget-object v5, Lcom/genie_connect/common/db/model/AgendaItem;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "relatedSession"

    sget-object v5, Lcom/genie_connect/common/db/model/AgendaItem;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "relatedSubSession"

    sget-object v5, Lcom/genie_connect/common/db/model/AgendaItem;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/AgendaItem;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string v0, "agendaitems"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/genie_connect/common/db/model/AgendaItem;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "agendaItems"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/genie_connect/common/db/model/AgendaItem;->id:Ljava/lang/Long;

    .line 140
    return-void
.end method
