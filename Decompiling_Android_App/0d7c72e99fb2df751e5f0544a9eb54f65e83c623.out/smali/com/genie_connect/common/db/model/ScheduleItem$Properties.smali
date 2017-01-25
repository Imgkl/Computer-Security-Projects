.class public Lcom/genie_connect/common/db/model/ScheduleItem$Properties;
.super Ljava/lang/Object;
.source "ScheduleItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/model/ScheduleItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final BriefDescription:Lde/greenrobot/dao/Property;

.field public static final CreatedBy:Lde/greenrobot/dao/Property;

.field public static final CreatedDate:Lde/greenrobot/dao/Property;

.field public static final EventDay:Lde/greenrobot/dao/Property;

.field public static final FullDescription:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final ImportBatch:Lde/greenrobot/dao/Property;

.field public static final ImportCameFrom:Lde/greenrobot/dao/Property;

.field public static final ImportKey:Lde/greenrobot/dao/Property;

.field public static final Location:Lde/greenrobot/dao/Property;

.field public static final ModifiedBy:Lde/greenrobot/dao/Property;

.field public static final ModifiedDate:Lde/greenrobot/dao/Property;

.field public static final Name:Lde/greenrobot/dao/Property;

.field public static final RunningTime_from:Lde/greenrobot/dao/Property;

.field public static final RunningTime_to:Lde/greenrobot/dao/Property;

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

    .line 46
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/String;

    const-string v3, "location"

    const-string v5, "location"

    const-string v6, "scheduleItems"

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->Location:Lde/greenrobot/dao/Property;

    .line 47
    new-instance v2, Lde/greenrobot/dao/Property;

    const-class v4, Ljava/lang/String;

    const-string v5, "modifiedBy"

    const-string v7, "modifiedBy"

    const-string v8, "scheduleItems"

    move v3, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->ModifiedBy:Lde/greenrobot/dao/Property;

    .line 48
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "importCameFrom"

    const-string v7, "importCameFrom"

    const-string v8, "scheduleItems"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->ImportCameFrom:Lde/greenrobot/dao/Property;

    .line 49
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/Long;

    const-string/jumbo v5, "type"

    const-string/jumbo v7, "type"

    const-string v8, "scheduleItems"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->Type:Lde/greenrobot/dao/Property;

    .line 50
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/util/Date;

    const-string v5, "runningTime_to"

    const-string v7, "runningTime_to"

    const-string v8, "scheduleItems"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->RunningTime_to:Lde/greenrobot/dao/Property;

    .line 51
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/util/Date;

    const-string v5, "runningTime_from"

    const-string v7, "runningTime_from"

    const-string v8, "scheduleItems"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->RunningTime_from:Lde/greenrobot/dao/Property;

    .line 52
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/util/Date;

    const-string v5, "modifiedDate"

    const-string v7, "modifiedDate"

    const-string v8, "scheduleItems"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->ModifiedDate:Lde/greenrobot/dao/Property;

    .line 53
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/Long;

    const-string v5, "id"

    const-string v7, "id"

    const-string v8, "scheduleItems"

    move v6, v9

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 54
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/String;

    const-string v5, "eventDay"

    const-string v7, "eventDay"

    const-string v8, "scheduleItems"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->EventDay:Lde/greenrobot/dao/Property;

    .line 55
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    const-string v5, "fullDescription"

    const-string v7, "fullDescription"

    const-string v8, "scheduleItems"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->FullDescription:Lde/greenrobot/dao/Property;

    .line 56
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    const-string v5, "briefDescription"

    const-string v7, "briefDescription"

    const-string v8, "scheduleItems"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->BriefDescription:Lde/greenrobot/dao/Property;

    .line 57
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/String;

    const-string v5, "_id"

    const-string v7, "_id"

    const-string v8, "scheduleItems"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->_id:Lde/greenrobot/dao/Property;

    .line 58
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/String;

    const-string v5, "createdBy"

    const-string v7, "createdBy"

    const-string v8, "scheduleItems"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->CreatedBy:Lde/greenrobot/dao/Property;

    .line 59
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xd

    const-class v4, Ljava/lang/String;

    const-string v5, "name"

    const-string v7, "name"

    const-string v8, "scheduleItems"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->Name:Lde/greenrobot/dao/Property;

    .line 60
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xe

    const-class v4, Ljava/lang/String;

    const-string v5, "importBatch"

    const-string v7, "importBatch"

    const-string v8, "scheduleItems"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->ImportBatch:Lde/greenrobot/dao/Property;

    .line 61
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xf

    const-class v4, Ljava/util/Date;

    const-string v5, "createdDate"

    const-string v7, "createdDate"

    const-string v8, "scheduleItems"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->CreatedDate:Lde/greenrobot/dao/Property;

    .line 62
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x10

    const-class v4, Ljava/lang/String;

    const-string v5, "importKey"

    const-string v7, "importKey"

    const-string v8, "scheduleItems"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->ImportKey:Lde/greenrobot/dao/Property;

    .line 63
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x11

    const-class v4, Ljava/lang/String;

    const-string v5, "_namespace"

    const-string v7, "_namespace"

    const-string v8, "scheduleItems"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->_namespace:Lde/greenrobot/dao/Property;

    .line 64
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x12

    const-class v4, Ljava/lang/String;

    const-string v5, "_dataversion"

    const-string v7, "_dataversion"

    const-string v8, "scheduleItems"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ScheduleItem$Properties;->_dataversion:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
