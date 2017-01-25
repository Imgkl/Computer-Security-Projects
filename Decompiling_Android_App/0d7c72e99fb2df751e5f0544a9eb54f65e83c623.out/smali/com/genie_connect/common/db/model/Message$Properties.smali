.class public Lcom/genie_connect/common/db/model/Message$Properties;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/model/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AssociatedMeeting:Lde/greenrobot/dao/Property;

.field public static final Author:Lde/greenrobot/dao/Property;

.field public static final Body:Lde/greenrobot/dao/Property;

.field public static final BodyHtml:Lde/greenrobot/dao/Property;

.field public static final CreatedBy:Lde/greenrobot/dao/Property;

.field public static final CreatedDate:Lde/greenrobot/dao/Property;

.field public static final FromExhibitor:Lde/greenrobot/dao/Property;

.field public static final FromVisitor:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final ImportBatch:Lde/greenrobot/dao/Property;

.field public static final ImportCameFrom:Lde/greenrobot/dao/Property;

.field public static final ImportKey:Lde/greenrobot/dao/Property;

.field public static final IsRead:Lde/greenrobot/dao/Property;

.field public static final IsRootParent:Lde/greenrobot/dao/Property;

.field public static final LiveStatus:Lde/greenrobot/dao/Property;

.field public static final ModifiedBy:Lde/greenrobot/dao/Property;

.field public static final ModifiedDate:Lde/greenrobot/dao/Property;

.field public static final NoChildren:Lde/greenrobot/dao/Property;

.field public static final Parent:Lde/greenrobot/dao/Property;

.field public static final Recipient:Lde/greenrobot/dao/Property;

.field public static final ScheduledDate:Lde/greenrobot/dao/Property;

.field public static final ScheduledLiveStatus:Lde/greenrobot/dao/Property;

.field public static final ScheduledTaskName:Lde/greenrobot/dao/Property;

.field public static final Subject:Lde/greenrobot/dao/Property;

.field public static final Timestamp:Lde/greenrobot/dao/Property;

.field public static final ToExhibitor:Lde/greenrobot/dao/Property;

.field public static final ToVisitor:Lde/greenrobot/dao/Property;

.field public static final Type:Lde/greenrobot/dao/Property;

.field public static final _dataversion:Lde/greenrobot/dao/Property;

.field public static final _id:Lde/greenrobot/dao/Property;

.field public static final _namespace:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 121
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/Long;

    const-string v3, "liveStatus"

    const-string v5, "liveStatus"

    const-string v6, "messages"

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/Message$Properties;->LiveStatus:Lde/greenrobot/dao/Property;

    .line 122
    new-instance v2, Lde/greenrobot/dao/Property;

    const-class v4, Ljava/lang/String;

    const-string v5, "body"

    const-string v7, "body"

    const-string v8, "messages"

    move v3, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->Body:Lde/greenrobot/dao/Property;

    .line 123
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "bodyHtml"

    const-string v7, "bodyHtml"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->BodyHtml:Lde/greenrobot/dao/Property;

    .line 124
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string v5, "modifiedBy"

    const-string v7, "modifiedBy"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->ModifiedBy:Lde/greenrobot/dao/Property;

    .line 125
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    const-string v5, "subject"

    const-string v7, "subject"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->Subject:Lde/greenrobot/dao/Property;

    .line 126
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/Long;

    const-string v5, "noChildren"

    const-string v7, "noChildren"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->NoChildren:Lde/greenrobot/dao/Property;

    .line 127
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/Long;

    const-string/jumbo v5, "type"

    const-string/jumbo v7, "type"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->Type:Lde/greenrobot/dao/Property;

    .line 128
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    const-string v5, "recipient"

    const-string v7, "recipient"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->Recipient:Lde/greenrobot/dao/Property;

    .line 129
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/util/Date;

    const-string v5, "scheduledDate"

    const-string v7, "scheduledDate"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->ScheduledDate:Lde/greenrobot/dao/Property;

    .line 130
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/Long;

    const-string v5, "id"

    const-string v7, "id"

    const-string v8, "messages"

    move v6, v9

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 131
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/util/Date;

    const-string/jumbo v5, "timestamp"

    const-string/jumbo v7, "timestamp"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->Timestamp:Lde/greenrobot/dao/Property;

    .line 132
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/String;

    const-string v5, "author"

    const-string v7, "author"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->Author:Lde/greenrobot/dao/Property;

    .line 133
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isRootParent"

    const-string v7, "isRootParent"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->IsRootParent:Lde/greenrobot/dao/Property;

    .line 134
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xd

    const-class v4, Ljava/lang/Long;

    const-string v5, "scheduledLiveStatus"

    const-string v7, "scheduledLiveStatus"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->ScheduledLiveStatus:Lde/greenrobot/dao/Property;

    .line 135
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xe

    const-class v4, Ljava/lang/String;

    const-string v5, "_id"

    const-string v7, "_id"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->_id:Lde/greenrobot/dao/Property;

    .line 136
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xf

    const-class v4, Ljava/lang/String;

    const-string v5, "importBatch"

    const-string v7, "importBatch"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->ImportBatch:Lde/greenrobot/dao/Property;

    .line 137
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x10

    const-class v4, Ljava/lang/Long;

    const-string/jumbo v5, "toVisitor"

    const-string/jumbo v7, "toVisitor"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->ToVisitor:Lde/greenrobot/dao/Property;

    .line 138
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x11

    const-class v4, Ljava/lang/Long;

    const-string v5, "fromExhibitor"

    const-string v7, "fromExhibitor"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->FromExhibitor:Lde/greenrobot/dao/Property;

    .line 139
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x12

    const-class v4, Ljava/util/Date;

    const-string v5, "createdDate"

    const-string v7, "createdDate"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->CreatedDate:Lde/greenrobot/dao/Property;

    .line 140
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x13

    const-class v4, Ljava/lang/String;

    const-string v5, "scheduledTaskName"

    const-string v7, "scheduledTaskName"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->ScheduledTaskName:Lde/greenrobot/dao/Property;

    .line 141
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x14

    const-class v4, Ljava/lang/Long;

    const-string/jumbo v5, "toExhibitor"

    const-string/jumbo v7, "toExhibitor"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->ToExhibitor:Lde/greenrobot/dao/Property;

    .line 142
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x15

    const-class v4, Ljava/lang/Long;

    const-string v5, "parent"

    const-string v7, "parent"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->Parent:Lde/greenrobot/dao/Property;

    .line 143
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x16

    const-class v4, Ljava/lang/String;

    const-string v5, "importCameFrom"

    const-string v7, "importCameFrom"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->ImportCameFrom:Lde/greenrobot/dao/Property;

    .line 144
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x17

    const-class v4, Ljava/util/Date;

    const-string v5, "modifiedDate"

    const-string v7, "modifiedDate"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->ModifiedDate:Lde/greenrobot/dao/Property;

    .line 145
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x18

    const-class v4, Ljava/lang/Long;

    const-string v5, "associatedMeeting"

    const-string v7, "associatedMeeting"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->AssociatedMeeting:Lde/greenrobot/dao/Property;

    .line 146
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x19

    const-class v4, Ljava/lang/String;

    const-string v5, "createdBy"

    const-string v7, "createdBy"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->CreatedBy:Lde/greenrobot/dao/Property;

    .line 147
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1a

    const-class v4, Ljava/lang/Long;

    const-string v5, "fromVisitor"

    const-string v7, "fromVisitor"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->FromVisitor:Lde/greenrobot/dao/Property;

    .line 148
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1b

    const-class v4, Ljava/lang/String;

    const-string v5, "importKey"

    const-string v7, "importKey"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->ImportKey:Lde/greenrobot/dao/Property;

    .line 149
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1c

    const-class v4, Ljava/lang/String;

    const-string v5, "_namespace"

    const-string v7, "_namespace"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->_namespace:Lde/greenrobot/dao/Property;

    .line 150
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1d

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isRead"

    const-string v7, "isRead"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->IsRead:Lde/greenrobot/dao/Property;

    .line 151
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1e

    const-class v4, Ljava/lang/String;

    const-string v5, "_dataversion"

    const-string v7, "_dataversion"

    const-string v8, "messages"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Message$Properties;->_dataversion:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
