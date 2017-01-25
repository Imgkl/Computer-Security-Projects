.class public Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;
.super Ljava/lang/Object;
.source "ActivityStreamPost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/common/db/model/ActivityStreamPost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AbuseStatus:Lde/greenrobot/dao/Property;

.field public static final Author_exhibitor:Lde/greenrobot/dao/Property;

.field public static final Author_imageUrl:Lde/greenrobot/dao/Property;

.field public static final Author_linkUrl:Lde/greenrobot/dao/Property;

.field public static final Author_name:Lde/greenrobot/dao/Property;

.field public static final Author_visitor:Lde/greenrobot/dao/Property;

.field public static final Buoyancy:Lde/greenrobot/dao/Property;

.field public static final CreatedBy:Lde/greenrobot/dao/Property;

.field public static final CreatedDate:Lde/greenrobot/dao/Property;

.field public static final Id:Lde/greenrobot/dao/Property;

.field public static final ImportBatch:Lde/greenrobot/dao/Property;

.field public static final ImportCameFrom:Lde/greenrobot/dao/Property;

.field public static final ImportKey:Lde/greenrobot/dao/Property;

.field public static final IsFavourite:Lde/greenrobot/dao/Property;

.field public static final LiveStatus:Lde/greenrobot/dao/Property;

.field public static final Message:Lde/greenrobot/dao/Property;

.field public static final ModifiedBy:Lde/greenrobot/dao/Property;

.field public static final ModifiedDate:Lde/greenrobot/dao/Property;

.field public static final NoComments:Lde/greenrobot/dao/Property;

.field public static final PreAbuseLiveStatus:Lde/greenrobot/dao/Property;

.field public static final ScheduledDate:Lde/greenrobot/dao/Property;

.field public static final ScheduledLiveStatus:Lde/greenrobot/dao/Property;

.field public static final ScheduledTaskName:Lde/greenrobot/dao/Property;

.field public static final Timestamp:Lde/greenrobot/dao/Property;

.field public static final Title:Lde/greenrobot/dao/Property;

.field public static final Type:Lde/greenrobot/dao/Property;

.field public static final Url:Lde/greenrobot/dao/Property;

.field public static final _dataversion:Lde/greenrobot/dao/Property;

.field public static final _id:Lde/greenrobot/dao/Property;

.field public static final _namespace:Lde/greenrobot/dao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 470
    new-instance v0, Lde/greenrobot/dao/Property;

    const-class v2, Ljava/lang/Long;

    const-string v3, "liveStatus"

    const-string v5, "liveStatus"

    const-string v6, "activityStreamPosts"

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->LiveStatus:Lde/greenrobot/dao/Property;

    .line 471
    new-instance v2, Lde/greenrobot/dao/Property;

    const-class v4, Ljava/lang/String;

    const-string v5, "modifiedBy"

    const-string v7, "modifiedBy"

    const-string v8, "activityStreamPosts"

    move v3, v9

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->ModifiedBy:Lde/greenrobot/dao/Property;

    .line 472
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/Long;

    const-string v5, "preAbuseLiveStatus"

    const-string v7, "preAbuseLiveStatus"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->PreAbuseLiveStatus:Lde/greenrobot/dao/Property;

    .line 473
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string/jumbo v5, "type"

    const-string/jumbo v7, "type"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->Type:Lde/greenrobot/dao/Property;

    .line 474
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/Long;

    const-string v5, "buoyancy"

    const-string v7, "buoyancy"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->Buoyancy:Lde/greenrobot/dao/Property;

    .line 475
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x5

    const-class v4, Ljava/util/Date;

    const-string/jumbo v5, "timestamp"

    const-string/jumbo v7, "timestamp"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->Timestamp:Lde/greenrobot/dao/Property;

    .line 476
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x6

    const-class v4, Ljava/util/Date;

    const-string v5, "scheduledDate"

    const-string v7, "scheduledDate"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->ScheduledDate:Lde/greenrobot/dao/Property;

    .line 477
    new-instance v2, Lde/greenrobot/dao/Property;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/Long;

    const-string v5, "id"

    const-string v7, "id"

    const-string v8, "activityStreamPosts"

    move v6, v9

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->Id:Lde/greenrobot/dao/Property;

    .line 478
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/String;

    const-string v5, "author_linkUrl"

    const-string v7, "author_linkUrl"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->Author_linkUrl:Lde/greenrobot/dao/Property;

    .line 479
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    const-string v5, "author_imageUrl"

    const-string v7, "author_imageUrl"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->Author_imageUrl:Lde/greenrobot/dao/Property;

    .line 480
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    const-string v5, "author_name"

    const-string v7, "author_name"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->Author_name:Lde/greenrobot/dao/Property;

    .line 481
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/Long;

    const-string v5, "author_exhibitor"

    const-string v7, "author_exhibitor"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->Author_exhibitor:Lde/greenrobot/dao/Property;

    .line 482
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/Long;

    const-string v5, "author_visitor"

    const-string v7, "author_visitor"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->Author_visitor:Lde/greenrobot/dao/Property;

    .line 483
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xd

    const-class v4, Ljava/lang/String;

    const-string/jumbo v5, "title"

    const-string/jumbo v7, "title"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->Title:Lde/greenrobot/dao/Property;

    .line 484
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xe

    const-class v4, Ljava/lang/Long;

    const-string v5, "scheduledLiveStatus"

    const-string v7, "scheduledLiveStatus"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->ScheduledLiveStatus:Lde/greenrobot/dao/Property;

    .line 485
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0xf

    const-class v4, Ljava/lang/String;

    const-string v5, "_id"

    const-string v7, "_id"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->_id:Lde/greenrobot/dao/Property;

    .line 486
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x10

    const-class v4, Ljava/lang/String;

    const-string v5, "abuseStatus"

    const-string v7, "abuseStatus"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->AbuseStatus:Lde/greenrobot/dao/Property;

    .line 487
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x11

    const-class v4, Ljava/lang/String;

    const-string v5, "importBatch"

    const-string v7, "importBatch"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->ImportBatch:Lde/greenrobot/dao/Property;

    .line 488
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x12

    const-class v4, Ljava/util/Date;

    const-string v5, "createdDate"

    const-string v7, "createdDate"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->CreatedDate:Lde/greenrobot/dao/Property;

    .line 489
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x13

    const-class v4, Ljava/lang/String;

    const-string v5, "scheduledTaskName"

    const-string v7, "scheduledTaskName"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->ScheduledTaskName:Lde/greenrobot/dao/Property;

    .line 490
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x14

    const-class v4, Ljava/lang/String;

    const-string v5, "importCameFrom"

    const-string v7, "importCameFrom"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->ImportCameFrom:Lde/greenrobot/dao/Property;

    .line 491
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x15

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isFavourite"

    const-string v7, "isFavourite"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->IsFavourite:Lde/greenrobot/dao/Property;

    .line 492
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x16

    const-class v4, Ljava/lang/String;

    const-string/jumbo v5, "url"

    const-string/jumbo v7, "url"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->Url:Lde/greenrobot/dao/Property;

    .line 493
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x17

    const-class v4, Ljava/util/Date;

    const-string v5, "modifiedDate"

    const-string v7, "modifiedDate"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->ModifiedDate:Lde/greenrobot/dao/Property;

    .line 494
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x18

    const-class v4, Ljava/lang/String;

    const-string v5, "message"

    const-string v7, "message"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->Message:Lde/greenrobot/dao/Property;

    .line 495
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x19

    const-class v4, Ljava/lang/Long;

    const-string v5, "noComments"

    const-string v7, "noComments"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->NoComments:Lde/greenrobot/dao/Property;

    .line 496
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1a

    const-class v4, Ljava/lang/String;

    const-string v5, "createdBy"

    const-string v7, "createdBy"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->CreatedBy:Lde/greenrobot/dao/Property;

    .line 497
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1b

    const-class v4, Ljava/lang/String;

    const-string v5, "importKey"

    const-string v7, "importKey"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->ImportKey:Lde/greenrobot/dao/Property;

    .line 498
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1c

    const-class v4, Ljava/lang/String;

    const-string v5, "_namespace"

    const-string v7, "_namespace"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->_namespace:Lde/greenrobot/dao/Property;

    .line 499
    new-instance v2, Lde/greenrobot/dao/Property;

    const/16 v3, 0x1d

    const-class v4, Ljava/lang/String;

    const-string v5, "_dataversion"

    const-string v7, "_dataversion"

    const-string v8, "activityStreamPosts"

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lde/greenrobot/dao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;->_dataversion:Lde/greenrobot/dao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
