.class public Lcom/genie_connect/common/db/model/Subsession;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Subsession.java"

# interfaces
.implements Lcom/genie_connect/common/db/model/interfaces/Favouritable;
.implements Lcom/genie_connect/common/db/model/interfaces/Notable;
.implements Lcom/genie_connect/common/db/model/interfaces/Bookmarkable;
.implements Lcom/genie_connect/common/db/model/interfaces/Waitlistable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Subsession$Properties;,
        Lcom/genie_connect/common/db/model/Subsession$SubsessionSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "subsessions"

.field public static final TABLE_NAME:Ljava/lang/String; = "subsessions"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public addToAgendaMessage:Ljava/lang/String;

.field public briefDescription:Ljava/lang/String;

.field public canWaitlist:Ljava/lang/Boolean;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public eventDay:Ljava/lang/String;

.field public fullDescription:Ljava/lang/String;

.field public hasNote:Ljava/lang/Boolean;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isBookmarked:Ljava/lang/Boolean;

.field public isFavourite:Ljava/lang/Boolean;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public priority:Ljava/lang/Long;

.field public removeFromAgendaMessage:Ljava/lang/String;

.field public runningTime_from:Ljava/util/Date;

.field public runningTime_to:Ljava/util/Date;

.field public session:Ljava/lang/Long;

.field public shareUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Subsession;->id:Ljava/lang/Long;

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p1, "modifiedBy"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/Long;
    .param p3, "eventDay"    # Ljava/lang/String;
    .param p4, "fullDescription"    # Ljava/lang/String;
    .param p5, "_id"    # Ljava/lang/String;
    .param p6, "briefDescription"    # Ljava/lang/String;
    .param p7, "priority"    # Ljava/lang/Long;
    .param p8, "importBatch"    # Ljava/lang/String;
    .param p9, "name"    # Ljava/lang/String;
    .param p10, "createdDate"    # Ljava/util/Date;
    .param p11, "addToAgendaMessage"    # Ljava/lang/String;
    .param p12, "removeFromAgendaMessage"    # Ljava/lang/String;
    .param p13, "importCameFrom"    # Ljava/lang/String;
    .param p14, "runningTime_to"    # Ljava/util/Date;
    .param p15, "runningTime_from"    # Ljava/util/Date;
    .param p16, "modifiedDate"    # Ljava/util/Date;
    .param p17, "createdBy"    # Ljava/lang/String;
    .param p18, "session"    # Ljava/lang/Long;
    .param p19, "shareUrl"    # Ljava/lang/String;
    .param p20, "importKey"    # Ljava/lang/String;
    .param p21, "_namespace"    # Ljava/lang/String;
    .param p22, "isFavourite"    # Ljava/lang/Boolean;
    .param p23, "isBookmarked"    # Ljava/lang/Boolean;
    .param p24, "canWaitlist"    # Ljava/lang/Boolean;
    .param p25, "hasNote"    # Ljava/lang/Boolean;
    .param p26, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Subsession;->modifiedBy:Ljava/lang/String;

    .line 161
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Subsession;->id:Ljava/lang/Long;

    .line 162
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Subsession;->eventDay:Ljava/lang/String;

    .line 163
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Subsession;->fullDescription:Ljava/lang/String;

    .line 164
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Subsession;->_id:Ljava/lang/String;

    .line 165
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Subsession;->briefDescription:Ljava/lang/String;

    .line 166
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Subsession;->priority:Ljava/lang/Long;

    .line 167
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Subsession;->importBatch:Ljava/lang/String;

    .line 168
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Subsession;->name:Ljava/lang/String;

    .line 169
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Subsession;->createdDate:Ljava/util/Date;

    .line 170
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Subsession;->addToAgendaMessage:Ljava/lang/String;

    .line 171
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Subsession;->removeFromAgendaMessage:Ljava/lang/String;

    .line 172
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Subsession;->importCameFrom:Ljava/lang/String;

    .line 173
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Subsession;->runningTime_to:Ljava/util/Date;

    .line 174
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->runningTime_from:Ljava/util/Date;

    .line 175
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->modifiedDate:Ljava/util/Date;

    .line 176
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->createdBy:Ljava/lang/String;

    .line 177
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->session:Ljava/lang/Long;

    .line 178
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->shareUrl:Ljava/lang/String;

    .line 179
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->importKey:Ljava/lang/String;

    .line 180
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->_namespace:Ljava/lang/String;

    .line 181
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->isFavourite:Ljava/lang/Boolean;

    .line 182
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->isBookmarked:Ljava/lang/Boolean;

    .line 183
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->canWaitlist:Ljava/lang/Boolean;

    .line 184
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->hasNote:Ljava/lang/Boolean;

    .line 185
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->_dataversion:Ljava/lang/String;

    .line 186
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 75
    sget-object v0, Lcom/genie_connect/common/db/model/Subsession;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "addToAgendaMessage"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "removeFromAgendaMessage"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "fullDescription"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

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

    const-string v4, "priority"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "shareUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "downloadables"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "downloadables"

    sget-object v7, Lcom/genie_connect/common/db/model/Subsession;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "locations"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "locations"

    sget-object v7, Lcom/genie_connect/common/db/model/Subsession;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "speakers"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "speakers"

    sget-object v7, Lcom/genie_connect/common/db/model/Subsession;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "keySpeakers"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "keySpeakers"

    sget-object v7, Lcom/genie_connect/common/db/model/Subsession;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string/jumbo v4, "tags"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v6, "tags"

    sget-object v7, Lcom/genie_connect/common/db/model/Subsession;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "runningTime"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->RUNNING_TIME_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "eventDay"

    sget-object v5, Lcom/genie_connect/common/db/model/Subsession;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "session"

    sget-object v5, Lcom/genie_connect/common/db/model/Subsession;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "canWaitlist"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Subsession;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string v0, "subsessions"

    return-object v0
.end method

.method public getHasNote()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->hasNote:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsBookmarked()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->isBookmarked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsFavourite()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->isFavourite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "subsessions"

    return-object v0
.end method

.method public isWaitlistable()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Subsession;->canWaitlist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setHasNote(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Subsession;->hasNote:Ljava/lang/Boolean;

    .line 203
    return-void
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Subsession;->id:Ljava/lang/Long;

    .line 148
    return-void
.end method

.method public setIsBookmarked(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Subsession;->isBookmarked:Ljava/lang/Boolean;

    .line 214
    return-void
.end method

.method public setIsFavourite(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Subsession;->isFavourite:Ljava/lang/Boolean;

    .line 195
    return-void
.end method
