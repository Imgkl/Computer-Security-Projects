.class public Lcom/genie_connect/common/db/model/Message;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/Message$Properties;,
        Lcom/genie_connect/common/db/model/Message$MessageSyncableFields;,
        Lcom/genie_connect/common/db/model/Message$MessageType;
    }
.end annotation


# static fields
.field public static final ENTITY_NAME:Ljava/lang/String; = "messages"

.field public static final TABLE_NAME:Ljava/lang/String; = "messages"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public associatedMeeting:Ljava/lang/Long;

.field public author:Ljava/lang/String;

.field public body:Ljava/lang/String;

.field public bodyHtml:Ljava/lang/String;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public fromExhibitor:Ljava/lang/Long;

.field public fromVisitor:Ljava/lang/Long;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isRead:Ljava/lang/Boolean;

.field public isRootParent:Ljava/lang/Boolean;

.field public liveStatus:Ljava/lang/Long;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public noChildren:Ljava/lang/Long;

.field public parent:Ljava/lang/Long;

.field public recipient:Ljava/lang/String;

.field public scheduledDate:Ljava/util/Date;

.field public scheduledLiveStatus:Ljava/lang/Long;

.field public scheduledTaskName:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public timestamp:Ljava/util/Date;

.field public toExhibitor:Ljava/lang/Long;

.field public toVisitor:Ljava/lang/Long;

.field public type:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Message;->id:Ljava/lang/Long;

    .line 183
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 1
    .param p1, "liveStatus"    # Ljava/lang/Long;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "bodyHtml"    # Ljava/lang/String;
    .param p4, "modifiedBy"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "noChildren"    # Ljava/lang/Long;
    .param p7, "type"    # Ljava/lang/Long;
    .param p8, "recipient"    # Ljava/lang/String;
    .param p9, "scheduledDate"    # Ljava/util/Date;
    .param p10, "id"    # Ljava/lang/Long;
    .param p11, "timestamp"    # Ljava/util/Date;
    .param p12, "author"    # Ljava/lang/String;
    .param p13, "isRootParent"    # Ljava/lang/Boolean;
    .param p14, "scheduledLiveStatus"    # Ljava/lang/Long;
    .param p15, "_id"    # Ljava/lang/String;
    .param p16, "importBatch"    # Ljava/lang/String;
    .param p17, "toVisitor"    # Ljava/lang/Long;
    .param p18, "fromExhibitor"    # Ljava/lang/Long;
    .param p19, "createdDate"    # Ljava/util/Date;
    .param p20, "scheduledTaskName"    # Ljava/lang/String;
    .param p21, "toExhibitor"    # Ljava/lang/Long;
    .param p22, "parent"    # Ljava/lang/Long;
    .param p23, "importCameFrom"    # Ljava/lang/String;
    .param p24, "modifiedDate"    # Ljava/util/Date;
    .param p25, "associatedMeeting"    # Ljava/lang/Long;
    .param p26, "createdBy"    # Ljava/lang/String;
    .param p27, "fromVisitor"    # Ljava/lang/Long;
    .param p28, "importKey"    # Ljava/lang/String;
    .param p29, "_namespace"    # Ljava/lang/String;
    .param p30, "isRead"    # Ljava/lang/Boolean;
    .param p31, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Message;->liveStatus:Ljava/lang/Long;

    .line 187
    iput-object p2, p0, Lcom/genie_connect/common/db/model/Message;->body:Ljava/lang/String;

    .line 188
    iput-object p3, p0, Lcom/genie_connect/common/db/model/Message;->bodyHtml:Ljava/lang/String;

    .line 189
    iput-object p4, p0, Lcom/genie_connect/common/db/model/Message;->modifiedBy:Ljava/lang/String;

    .line 190
    iput-object p5, p0, Lcom/genie_connect/common/db/model/Message;->subject:Ljava/lang/String;

    .line 191
    iput-object p6, p0, Lcom/genie_connect/common/db/model/Message;->noChildren:Ljava/lang/Long;

    .line 192
    iput-object p7, p0, Lcom/genie_connect/common/db/model/Message;->type:Ljava/lang/Long;

    .line 193
    iput-object p8, p0, Lcom/genie_connect/common/db/model/Message;->recipient:Ljava/lang/String;

    .line 194
    iput-object p9, p0, Lcom/genie_connect/common/db/model/Message;->scheduledDate:Ljava/util/Date;

    .line 195
    iput-object p10, p0, Lcom/genie_connect/common/db/model/Message;->id:Ljava/lang/Long;

    .line 196
    iput-object p11, p0, Lcom/genie_connect/common/db/model/Message;->timestamp:Ljava/util/Date;

    .line 197
    iput-object p12, p0, Lcom/genie_connect/common/db/model/Message;->author:Ljava/lang/String;

    .line 198
    iput-object p13, p0, Lcom/genie_connect/common/db/model/Message;->isRootParent:Ljava/lang/Boolean;

    .line 199
    iput-object p14, p0, Lcom/genie_connect/common/db/model/Message;->scheduledLiveStatus:Ljava/lang/Long;

    .line 200
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->_id:Ljava/lang/String;

    .line 201
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->importBatch:Ljava/lang/String;

    .line 202
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->toVisitor:Ljava/lang/Long;

    .line 203
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->fromExhibitor:Ljava/lang/Long;

    .line 204
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->createdDate:Ljava/util/Date;

    .line 205
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->scheduledTaskName:Ljava/lang/String;

    .line 206
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->toExhibitor:Ljava/lang/Long;

    .line 207
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->parent:Ljava/lang/Long;

    .line 208
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->importCameFrom:Ljava/lang/String;

    .line 209
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->modifiedDate:Ljava/util/Date;

    .line 210
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->associatedMeeting:Ljava/lang/Long;

    .line 211
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->createdBy:Ljava/lang/String;

    .line 212
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->fromVisitor:Ljava/lang/Long;

    .line 213
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->importKey:Ljava/lang/String;

    .line 214
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->_namespace:Ljava/lang/String;

    .line 215
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->isRead:Ljava/lang/Boolean;

    .line 216
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/genie_connect/common/db/model/Message;->_dataversion:Ljava/lang/String;

    .line 217
    return-void
.end method


# virtual methods
.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 6

    .prologue
    .line 89
    sget-object v0, Lcom/genie_connect/common/db/model/Message;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "liveStatus"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "body"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "bodyHtml"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "subject"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "noChildren"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "type"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "timestamp"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "author"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "recipient"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "parent"

    sget-object v5, Lcom/genie_connect/common/db/model/Message;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "fromVisitor"

    sget-object v5, Lcom/genie_connect/common/db/model/Message;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v4, "toVisitor"

    sget-object v5, Lcom/genie_connect/common/db/model/Message;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "associatedMeeting"

    sget-object v5, Lcom/genie_connect/common/db/model/Message;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v4, "fromExhibitor"

    sget-object v5, Lcom/genie_connect/common/db/model/Message;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string/jumbo v4, "toExhibitor"

    sget-object v5, Lcom/genie_connect/common/db/model/Message;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/Message;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "messages"

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/genie_connect/common/db/model/Message;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "messages"

    return-object v0
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/genie_connect/common/db/model/Message;->id:Ljava/lang/Long;

    .line 174
    return-void
.end method
