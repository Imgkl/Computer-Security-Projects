.class public Lcom/genie_connect/common/db/model/VisitorGroup;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "VisitorGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/VisitorGroup$Properties;,
        Lcom/genie_connect/common/db/model/VisitorGroup$TagFields;,
        Lcom/genie_connect/common/db/model/VisitorGroup$VisitorGroupSyncableFields;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "visitorgroups"

.field public static final TABLE_NAME:Ljava/lang/String; = "visitorGroups"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public addToAgendaDisabledMessage:Ljava/lang/String;

.field public autoAcceptMeeting:Ljava/lang/Boolean;

.field public autoIsDeletableMeeting:Ljava/lang/Boolean;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isAddToAgendaEnabled:Ljava/lang/Boolean;

.field public meetingCredits:Ljava/lang/Long;

.field public meetingsTarget:Ljava/lang/Long;

.field public messageCredits:Ljava/lang/Long;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "meetingCredits"    # Ljava/lang/Long;
    .param p2, "meetingsTarget"    # Ljava/lang/Long;
    .param p3, "addToAgendaDisabledMessage"    # Ljava/lang/String;
    .param p4, "isAddToAgendaEnabled"    # Ljava/lang/Boolean;
    .param p5, "modifiedBy"    # Ljava/lang/String;
    .param p6, "autoIsDeletableMeeting"    # Ljava/lang/Boolean;
    .param p7, "importCameFrom"    # Ljava/lang/String;
    .param p8, "modifiedDate"    # Ljava/util/Date;
    .param p9, "_id"    # Ljava/lang/String;
    .param p10, "createdBy"    # Ljava/lang/String;
    .param p11, "importBatch"    # Ljava/lang/String;
    .param p12, "name"    # Ljava/lang/String;
    .param p13, "autoAcceptMeeting"    # Ljava/lang/Boolean;
    .param p14, "createdDate"    # Ljava/util/Date;
    .param p15, "messageCredits"    # Ljava/lang/Long;
    .param p16, "importKey"    # Ljava/lang/String;
    .param p17, "_namespace"    # Ljava/lang/String;
    .param p18, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->meetingCredits:Ljava/lang/Long;

    .line 122
    iput-object p2, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->meetingsTarget:Ljava/lang/Long;

    .line 123
    iput-object p3, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->addToAgendaDisabledMessage:Ljava/lang/String;

    .line 124
    iput-object p4, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->isAddToAgendaEnabled:Ljava/lang/Boolean;

    .line 125
    iput-object p5, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->modifiedBy:Ljava/lang/String;

    .line 126
    iput-object p6, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->autoIsDeletableMeeting:Ljava/lang/Boolean;

    .line 127
    iput-object p7, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->importCameFrom:Ljava/lang/String;

    .line 128
    iput-object p8, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->modifiedDate:Ljava/util/Date;

    .line 129
    iput-object p9, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->_id:Ljava/lang/String;

    .line 130
    iput-object p10, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->createdBy:Ljava/lang/String;

    .line 131
    iput-object p11, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->importBatch:Ljava/lang/String;

    .line 132
    iput-object p12, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->name:Ljava/lang/String;

    .line 133
    iput-object p13, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->autoAcceptMeeting:Ljava/lang/Boolean;

    .line 134
    iput-object p14, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->createdDate:Ljava/util/Date;

    .line 135
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->messageCredits:Ljava/lang/Long;

    .line 136
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->importKey:Ljava/lang/String;

    .line 137
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->_namespace:Ljava/lang/String;

    .line 138
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->_dataversion:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/genie_connect/common/db/model/VisitorGroup;->name:Ljava/lang/String;

    .line 118
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 7

    .prologue
    .line 58
    sget-object v0, Lcom/genie_connect/common/db/model/VisitorGroup;->COMMON_FIELDS_STRING_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "name"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "autoAcceptMeeting"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "messageCredits"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "meetingsTarget"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "addToAgendaDisabledMessage"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "isAddToAgendaEnabled"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "autoIsDeletableMeeting"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;

    const-string/jumbo v4, "viewingRestrictions"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->VIEWING_RESTRICTION_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    sget-object v6, Lcom/genie_connect/common/db/model/VisitorGroup;->NAME:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5, v6}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArrayEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/VisitorGroup;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string/jumbo v0, "visitorgroups"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string/jumbo v0, "visitorGroups"

    return-object v0
.end method
