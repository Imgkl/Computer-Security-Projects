.class public Lcom/genie_connect/common/db/model/Session;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Session.java"

# interfaces
.implements Lcom/genie_connect/common/db/model/interfaces/Favouritable;
.implements Lcom/genie_connect/common/db/model/interfaces/Notable;
.implements Lcom/genie_connect/common/db/model/interfaces/Bookmarkable;
.implements Lcom/genie_connect/common/db/model/interfaces/Waitlistable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Session$Properties;,
        Lcom/genie_connect/common/db/model/Session$SessionSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "sessions"

.field public static final TABLE_NAME:Ljava/lang/String; = "sessions"


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

.field public feedbackUrl:Ljava/lang/String;

.field public fullDescription:Ljava/lang/String;

.field public hasNote:Ljava/lang/Boolean;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isBookmarked:Ljava/lang/Boolean;

.field public isFavourite:Ljava/lang/Boolean;

.field public leadChair:Ljava/lang/Long;

.field public location:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;

.field public permissionGroup:Ljava/lang/Long;

.field public removeFromAgendaMessage:Ljava/lang/String;

.field public runningTime_from:Ljava/util/Date;

.field public runningTime_to:Ljava/util/Date;

.field public shareUrl:Ljava/lang/String;

.field public survey:Ljava/lang/Long;

.field public track:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Session;->id:Ljava/lang/Long;

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "modifiedBy"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/Long;
    .param p4, "feedbackUrl"    # Ljava/lang/String;
    .param p5, "eventDay"    # Ljava/lang/String;
    .param p6, "fullDescription"    # Ljava/lang/String;
    .param p7, "_id"    # Ljava/lang/String;
    .param p8, "briefDescription"    # Ljava/lang/String;
    .param p9, "importBatch"    # Ljava/lang/String;
    .param p10, "name"    # Ljava/lang/String;
    .param p11, "createdDate"    # Ljava/util/Date;
    .param p12, "addToAgendaMessage"    # Ljava/lang/String;
    .param p13, "removeFromAgendaMessage"    # Ljava/lang/String;
    .param p14, "leadChair"    # Ljava/lang/Long;
    .param p15, "track"    # Ljava/lang/String;
    .param p16, "importCameFrom"    # Ljava/lang/String;
    .param p17, "runningTime_to"    # Ljava/util/Date;
    .param p18, "runningTime_from"    # Ljava/util/Date;
    .param p19, "modifiedDate"    # Ljava/util/Date;
    .param p20, "createdBy"    # Ljava/lang/String;
    .param p21, "shareUrl"    # Ljava/lang/String;
    .param p22, "importKey"    # Ljava/lang/String;
    .param p23, "permissionGroup"    # Ljava/lang/Long;
    .param p24, "_namespace"    # Ljava/lang/String;
    .param p25, "isFavourite"    # Ljava/lang/Boolean;
    .param p26, "isBookmarked"    # Ljava/lang/Boolean;
    .param p27, "canWaitlist"    # Ljava/lang/Boolean;
    .param p28, "hasNote"    # Ljava/lang/Boolean;
    .param p29, "_dataversion"    # Ljava/lang/String;
    .param p30, "survey"    # Ljava/lang/Long;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Session;->location:Ljava/lang/String;

    .line 188
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Session;->modifiedBy:Ljava/lang/String;

    .line 189
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Session;->id:Ljava/lang/Long;

    .line 190
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Session;->feedbackUrl:Ljava/lang/String;

    .line 191
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Session;->eventDay:Ljava/lang/String;

    .line 192
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Session;->fullDescription:Ljava/lang/String;

    .line 193
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Session;->_id:Ljava/lang/String;

    .line 194
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Session;->briefDescription:Ljava/lang/String;

    .line 195
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Session;->importBatch:Ljava/lang/String;

    .line 196
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Session;->name:Ljava/lang/String;

    .line 197
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Session;->createdDate:Ljava/util/Date;

    .line 198
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Session;->addToAgendaMessage:Ljava/lang/String;

    .line 199
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Session;->removeFromAgendaMessage:Ljava/lang/String;

    .line 200
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Session;->leadChair:Ljava/lang/Long;

    .line 201
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Session;->track:Ljava/lang/String;

    .line 202
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Session;->importCameFrom:Ljava/lang/String;

    .line 203
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Session;->runningTime_to:Ljava/util/Date;

    .line 204
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Session;->runningTime_from:Ljava/util/Date;

    .line 205
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Session;->modifiedDate:Ljava/util/Date;

    .line 206
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Session;->createdBy:Ljava/lang/String;

    .line 207
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Session;->shareUrl:Ljava/lang/String;

    .line 208
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Session;->importKey:Ljava/lang/String;

    .line 209
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Session;->permissionGroup:Ljava/lang/Long;

    .line 210
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Session;->_namespace:Ljava/lang/String;

    .line 211
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Session;->isFavourite:Ljava/lang/Boolean;

    .line 212
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Session;->isBookmarked:Ljava/lang/Boolean;

    .line 213
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Session;->canWaitlist:Ljava/lang/Boolean;

    .line 214
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Session;->hasNote:Ljava/lang/Boolean;

    .line 215
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Session;->_dataversion:Ljava/lang/String;

    .line 216
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Session;->survey:Ljava/lang/Long;

    .line 217
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 90
    sget-object v0, Lcom/genie_connect/common/db/model/Session;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0x17

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

    const-string v4, "feedbackUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "fullDescription"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

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

    const-string v4, "shareUrl"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "categories"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "categories"

    sget-object v7, Lcom/genie_connect/common/db/model/Session;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "coChairs"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "coChairs"

    sget-object v7, Lcom/genie_connect/common/db/model/Session;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "downloadables"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "downloadables"

    sget-object v7, Lcom/genie_connect/common/db/model/Session;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "exhibitors"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "exhibitors"

    sget-object v7, Lcom/genie_connect/common/db/model/Session;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "keySpeakers"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "keySpeakers"

    sget-object v7, Lcom/genie_connect/common/db/model/Session;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "locations"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "locations"

    sget-object v7, Lcom/genie_connect/common/db/model/Session;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "speakers"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "speakers"

    sget-object v7, Lcom/genie_connect/common/db/model/Session;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string/jumbo v4, "tags"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v6, "tags"

    sget-object v7, Lcom/genie_connect/common/db/model/Session;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "relatedTags"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "relatedTags"

    sget-object v7, Lcom/genie_connect/common/db/model/Session;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "runningTime"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->RUNNING_TIME_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "eventDay"

    sget-object v5, Lcom/genie_connect/common/db/model/Session;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "leadChair"

    sget-object v5, Lcom/genie_connect/common/db/model/Session;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "location"

    sget-object v5, Lcom/genie_connect/common/db/model/Session;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "permissionGroup"

    sget-object v5, Lcom/genie_connect/common/db/model/Session;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v4, "track"

    sget-object v5, Lcom/genie_connect/common/db/model/Session;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "survey"

    sget-object v5, Lcom/genie_connect/common/db/model/Session;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "canWaitlist"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Session;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string v0, "sessions"

    return-object v0
.end method

.method public getHasNote()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Session;->hasNote:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Session;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsBookmarked()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Session;->isBookmarked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsFavourite()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Session;->isFavourite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const-string v0, "sessions"

    return-object v0
.end method

.method public isWaitlistable()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Session;->canWaitlist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setHasNote(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Session;->hasNote:Ljava/lang/Boolean;

    .line 234
    return-void
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Session;->id:Ljava/lang/Long;

    .line 176
    return-void
.end method

.method public setIsBookmarked(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Session;->isBookmarked:Ljava/lang/Boolean;

    .line 246
    return-void
.end method

.method public setIsFavourite(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Session;->isFavourite:Ljava/lang/Boolean;

    .line 226
    return-void
.end method
