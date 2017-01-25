.class public Lcom/genie_connect/common/db/model/Subsession$Properties;
.super Ljava/lang/Object;
.source "Subsession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/model/Subsession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AddToAgendaMessage:Lde/greenrobot/dao/Property;

.field public static final BriefDescription:Lde/greenrobot/dao/Property;

.field public static final CanWaitlist:Lde/greenrobot/dao/Property;

.field public static final CreatedBy:Lde/greenrobot/dao/Property;

.field public static final CreatedDate:Lde/greenrobot/dao/Property;

.field public static final EventDay:Lde/greenrobot/dao/Property;

.field public static final FullDescription:Lde/greenrobot/dao/Property;

.field public static final HasNote:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final ImportBatch:Lde/greenrobot/dao/Property;

.field public static final ImportCameFrom:Lde/greenrobot/dao/Property;

.field public static final ImportKey:Lde/greenrobot/dao/Property;

.field public static final IsBookmarked:Lde/greenrobot/dao/Property;

.field public static final IsFavourite:Lde/greenrobot/dao/Property;

.field public static final ModifiedBy:Lde/greenrobot/dao/Property;

.field public static final ModifiedDate:Lde/greenrobot/dao/Property;

.field public static final Name:Lde/greenrobot/dao/Property;

.field public static final Priority:Lde/greenrobot/dao/Property;

.field public static final RemoveFromAgendaMessage:Lde/greenrobot/dao/Property;

.field public static final RunningTime_from:Lde/greenrobot/dao/Property;

.field public static final RunningTime_to:Lde/greenrobot/dao/Property;

.field public static final Session:Lde/greenrobot/dao/Property;

.field public static final ShareUrl:Lde/greenrobot/dao/Property;

.field public static final _dataversion:Lde/greenrobot/dao/Property;

.field public static final _id:Lde/greenrobot/dao/Property;

.field public static final _namespace:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 100
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/String;

    const-string v3, "modifiedBy"

    const-string v5, "modifiedBy"

    const-string v6, "subsessions"

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/Subsession$Properties;->ModifiedBy:Lde/greenrobot/dao/Property;

    .line 101
    new-instance v2, Lde/greenrobot/dao/Property;

    const-class v4, Ljava/lang/Long;

    const-string v5, "id"

    const-string v7, "id"

    const-string v8, "subsessions"

    move v3, v9

    move v6, v9

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 102
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "eventDay"

    const-string v7, "eventDay"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->EventDay:Lde/greenrobot/dao/Property;

    .line 103
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string v5, "fullDescription"

    const-string v7, "fullDescription"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->FullDescription:Lde/greenrobot/dao/Property;

    .line 104
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    const-string v5, "_id"

    const-string v7, "_id"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->_id:Lde/greenrobot/dao/Property;

    .line 105
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    const-string v5, "briefDescription"

    const-string v7, "briefDescription"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->BriefDescription:Lde/greenrobot/dao/Property;

    .line 106
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/Long;

    const-string v5, "priority"

    const-string v7, "priority"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->Priority:Lde/greenrobot/dao/Property;

    .line 107
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    const-string v5, "importBatch"

    const-string v7, "importBatch"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->ImportBatch:Lde/greenrobot/dao/Property;

    .line 108
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/String;

    const-string v5, "name"

    const-string v7, "name"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->Name:Lde/greenrobot/dao/Property;

    .line 109
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/util/Date;

    const-string v5, "createdDate"

    const-string v7, "createdDate"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->CreatedDate:Lde/greenrobot/dao/Property;

    .line 110
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    const-string v5, "addToAgendaMessage"

    const-string v7, "addToAgendaMessage"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->AddToAgendaMessage:Lde/greenrobot/dao/Property;

    .line 111
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/String;

    const-string v5, "removeFromAgendaMessage"

    const-string v7, "removeFromAgendaMessage"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->RemoveFromAgendaMessage:Lde/greenrobot/dao/Property;

    .line 112
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/String;

    const-string v5, "importCameFrom"

    const-string v7, "importCameFrom"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->ImportCameFrom:Lde/greenrobot/dao/Property;

    .line 113
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xd

    const-class v4, Ljava/util/Date;

    const-string v5, "runningTime_to"

    const-string v7, "runningTime_to"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    .line 114
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xe

    const-class v4, Ljava/util/Date;

    const-string v5, "runningTime_from"

    const-string v7, "runningTime_from"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    .line 115
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xf

    const-class v4, Ljava/util/Date;

    const-string v5, "modifiedDate"

    const-string v7, "modifiedDate"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->ModifiedDate:Lde/greenrobot/dao/Property;

    .line 116
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x10

    const-class v4, Ljava/lang/String;

    const-string v5, "createdBy"

    const-string v7, "createdBy"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->CreatedBy:Lde/greenrobot/dao/Property;

    .line 117
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x11

    const-class v4, Ljava/lang/Long;

    const-string v5, "session"

    const-string v7, "session"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->Session:Lde/greenrobot/dao/Property;

    .line 118
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x12

    const-class v4, Ljava/lang/String;

    const-string v5, "shareUrl"

    const-string v7, "shareUrl"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->ShareUrl:Lde/greenrobot/dao/Property;

    .line 119
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x13

    const-class v4, Ljava/lang/String;

    const-string v5, "importKey"

    const-string v7, "importKey"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->ImportKey:Lde/greenrobot/dao/Property;

    .line 120
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x14

    const-class v4, Ljava/lang/String;

    const-string v5, "_namespace"

    const-string v7, "_namespace"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->_namespace:Lde/greenrobot/dao/Property;

    .line 121
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x15

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isFavourite"

    const-string v7, "isFavourite"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->IsFavourite:Lde/greenrobot/dao/Property;

    .line 122
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x16

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isBookmarked"

    const-string v7, "isBookmarked"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->IsBookmarked:Lde/greenrobot/dao/Property;

    .line 123
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x17

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "canWaitlist"

    const-string v7, "canWaitlist"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->CanWaitlist:Lde/greenrobot/dao/Property;

    .line 124
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x18

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "hasNote"

    const-string v7, "hasNote"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->HasNote:Lde/greenrobot/dao/Property;

    .line 125
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x19

    const-class v4, Ljava/lang/String;

    const-string v5, "_dataversion"

    const-string v7, "_dataversion"

    const-string v8, "subsessions"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/Subsession$Properties;->_dataversion:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
