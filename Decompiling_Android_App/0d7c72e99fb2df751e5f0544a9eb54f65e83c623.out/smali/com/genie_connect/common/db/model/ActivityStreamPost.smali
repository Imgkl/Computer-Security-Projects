.class public Lcom/genie_connect/common/db/model/ActivityStreamPost;
.super Lcom/genie_connect/common/db/entityfactory/EGEntity;
.source "ActivityStreamPost.java"

# interfaces
.implements Lcom/genie_connect/common/db/model/interfaces/Favouritable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/model/ActivityStreamPost$1;,
        Lcom/genie_connect/common/db/model/ActivityStreamPost$Properties;,
        Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;,
        Lcom/genie_connect/common/db/model/ActivityStreamPost$ActivitystreampostSyncableFields;
    }
.end annotation


# static fields
.field public static final ASSOCIATED_ENTITIES:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field public static final ENTITY_NAME:Ljava/lang/String; = "activitystreamposts"

.field public static final SHARE_DEEPLINK:Ljava/lang/String; = ""

.field public static final SHARE_LINK:Ljava/lang/String; = "%s/genieintents;appid=%saction=view;entitynamespace=activitystreamposts;entityId=%s"

.field public static final TABLE_NAME:Ljava/lang/String; = "activityStreamPosts"


# instance fields
.field public _dataversion:Ljava/lang/String;

.field public _id:Ljava/lang/String;

.field public _namespace:Ljava/lang/String;

.field public abuseStatus:Ljava/lang/String;

.field public author_exhibitor:Ljava/lang/Long;

.field public author_imageUrl:Ljava/lang/String;

.field public author_linkUrl:Ljava/lang/String;

.field public author_name:Ljava/lang/String;

.field public author_visitor:Ljava/lang/Long;

.field public buoyancy:Ljava/lang/Long;

.field public createdBy:Ljava/lang/String;

.field public createdDate:Ljava/util/Date;

.field public id:Ljava/lang/Long;

.field public importBatch:Ljava/lang/String;

.field public importCameFrom:Ljava/lang/String;

.field public importKey:Ljava/lang/String;

.field public isFavourite:Ljava/lang/Boolean;

.field public liveStatus:Ljava/lang/Long;

.field private mDownloadbles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mExhibitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPois:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mProducts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeakers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSubsessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mVisitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public message:Ljava/lang/String;

.field public modifiedBy:Ljava/lang/String;

.field public modifiedDate:Ljava/util/Date;

.field public noComments:Ljava/lang/Long;

.field public preAbuseLiveStatus:Ljava/lang/Long;

.field public scheduledDate:Ljava/util/Date;

.field public scheduledLiveStatus:Ljava/lang/Long;

.field public scheduledTaskName:Ljava/lang/String;

.field public timestamp:Ljava/util/Date;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 122
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v1, 0x0

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->ASSOCIATED_ENTITIES:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 527
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 530
    iput-object p1, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->id:Ljava/lang/Long;

    .line 531
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "liveStatus"    # Ljava/lang/Long;
    .param p2, "modifiedBy"    # Ljava/lang/String;
    .param p3, "preAbuseLiveStatus"    # Ljava/lang/Long;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "buoyancy"    # Ljava/lang/Long;
    .param p6, "timestamp"    # Ljava/util/Date;
    .param p7, "scheduledDate"    # Ljava/util/Date;
    .param p8, "id"    # Ljava/lang/Long;
    .param p9, "author_linkUrl"    # Ljava/lang/String;
    .param p10, "author_imageUrl"    # Ljava/lang/String;
    .param p11, "author_name"    # Ljava/lang/String;
    .param p12, "author_exhibitor"    # Ljava/lang/Long;
    .param p13, "author_visitor"    # Ljava/lang/Long;
    .param p14, "title"    # Ljava/lang/String;
    .param p15, "scheduledLiveStatus"    # Ljava/lang/Long;
    .param p16, "_id"    # Ljava/lang/String;
    .param p17, "abuseStatus"    # Ljava/lang/String;
    .param p18, "importBatch"    # Ljava/lang/String;
    .param p19, "createdDate"    # Ljava/util/Date;
    .param p20, "scheduledTaskName"    # Ljava/lang/String;
    .param p21, "importCameFrom"    # Ljava/lang/String;
    .param p22, "isFavourite"    # Ljava/lang/Boolean;
    .param p23, "url"    # Ljava/lang/String;
    .param p24, "modifiedDate"    # Ljava/util/Date;
    .param p25, "message"    # Ljava/lang/String;
    .param p26, "noComments"    # Ljava/lang/Long;
    .param p27, "createdBy"    # Ljava/lang/String;
    .param p28, "importKey"    # Ljava/lang/String;
    .param p29, "_namespace"    # Ljava/lang/String;
    .param p30, "_dataversion"    # Ljava/lang/String;

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/genie_connect/common/db/entityfactory/EGEntity;-><init>()V

    .line 534
    iput-object p1, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->liveStatus:Ljava/lang/Long;

    .line 535
    iput-object p2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->modifiedBy:Ljava/lang/String;

    .line 536
    iput-object p3, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->preAbuseLiveStatus:Ljava/lang/Long;

    .line 537
    iput-object p4, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->type:Ljava/lang/String;

    .line 538
    iput-object p5, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->buoyancy:Ljava/lang/Long;

    .line 539
    iput-object p6, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->timestamp:Ljava/util/Date;

    .line 540
    iput-object p7, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->scheduledDate:Ljava/util/Date;

    .line 541
    iput-object p8, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->id:Ljava/lang/Long;

    .line 542
    iput-object p9, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->author_linkUrl:Ljava/lang/String;

    .line 543
    iput-object p10, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->author_imageUrl:Ljava/lang/String;

    .line 544
    iput-object p11, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->author_name:Ljava/lang/String;

    .line 545
    iput-object p12, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->author_exhibitor:Ljava/lang/Long;

    .line 546
    iput-object p13, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->author_visitor:Ljava/lang/Long;

    .line 547
    iput-object p14, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->title:Ljava/lang/String;

    .line 548
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->scheduledLiveStatus:Ljava/lang/Long;

    .line 549
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->_id:Ljava/lang/String;

    .line 550
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->abuseStatus:Ljava/lang/String;

    .line 551
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->importBatch:Ljava/lang/String;

    .line 552
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->createdDate:Ljava/util/Date;

    .line 553
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->scheduledTaskName:Ljava/lang/String;

    .line 554
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->importCameFrom:Ljava/lang/String;

    .line 555
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->isFavourite:Ljava/lang/Boolean;

    .line 556
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->url:Ljava/lang/String;

    .line 557
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->modifiedDate:Ljava/util/Date;

    .line 558
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->message:Ljava/lang/String;

    .line 559
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->noComments:Ljava/lang/Long;

    .line 560
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->createdBy:Ljava/lang/String;

    .line 561
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->importKey:Ljava/lang/String;

    .line 562
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->_namespace:Ljava/lang/String;

    .line 563
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->_dataversion:Ljava/lang/String;

    .line 564
    return-void
.end method

.method public static getDateDifference(Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .param p0, "serverTime"    # Ljava/lang/String;

    .prologue
    .line 411
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string/jumbo v21, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 413
    .local v17, "serverDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string/jumbo v21, "yyyy-MM-dd\' \'HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 416
    .local v20, "sqlDateFormat":Ljava/text/SimpleDateFormat;
    move-object/from16 v16, p0

    .line 419
    .local v16, "ret":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 429
    .local v5, "date":Ljava/util/Date;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 430
    .local v4, "currentDate":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    sub-long v8, v24, v26

    .line 431
    .local v8, "diff":J
    const-wide/16 v24, 0x3e8

    div-long v18, v8, v24

    .line 432
    .local v18, "seconds":J
    const-wide/16 v24, 0xa

    cmp-long v21, v18, v24

    if-gez v21, :cond_0

    .line 433
    const-string v16, "Now"

    :goto_1
    move-object/from16 p0, v16

    .line 460
    .end local v4    # "currentDate":Ljava/util/Date;
    .end local v5    # "date":Ljava/util/Date;
    .end local v8    # "diff":J
    .end local v18    # "seconds":J
    .end local p0    # "serverTime":Ljava/lang/String;
    :goto_2
    return-object p0

    .line 420
    .restart local p0    # "serverTime":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 422
    .local v10, "e1":Ljava/text/ParseException;
    :try_start_1
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .restart local v5    # "date":Ljava/util/Date;
    goto :goto_0

    .line 423
    .end local v5    # "date":Ljava/util/Date;
    :catch_1
    move-exception v11

    .line 424
    .local v11, "e2":Ljava/text/ParseException;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "^ AS: Could not parse date: "

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/genie_connect/common/utils/CommonLog;->err(Ljava/lang/String;)V

    goto :goto_2

    .line 435
    .end local v10    # "e1":Ljava/text/ParseException;
    .end local v11    # "e2":Ljava/text/ParseException;
    .restart local v4    # "currentDate":Ljava/util/Date;
    .restart local v5    # "date":Ljava/util/Date;
    .restart local v8    # "diff":J
    .restart local v18    # "seconds":J
    :cond_0
    const-wide/16 v24, 0x3c

    cmp-long v21, v18, v24

    if-gez v21, :cond_1

    .line 436
    const-string v16, "Just Now"

    goto :goto_1

    .line 439
    :cond_1
    const-wide/16 v24, 0x3c

    div-long v14, v18, v24

    .line 440
    .local v14, "minutes":J
    const-wide/16 v24, 0x3c

    cmp-long v21, v14, v24

    if-gez v21, :cond_2

    .line 441
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v24, " m"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    .line 444
    :cond_2
    const-wide/16 v24, 0x3c

    div-long v12, v14, v24

    .line 445
    .local v12, "hours":J
    const-wide/16 v24, 0x18

    cmp-long v21, v12, v24

    if-gez v21, :cond_3

    .line 446
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v24, " h"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 449
    :cond_3
    const-wide/16 v24, 0x18

    div-long v6, v12, v24

    .line 450
    .local v6, "days":J
    const-wide/16 v24, 0x7

    cmp-long v21, v6, v24

    if-gez v21, :cond_4

    .line 451
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v24, " d"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    .line 454
    :cond_4
    const-wide/16 v24, 0x7

    div-long v22, v6, v24

    .line 455
    .local v22, "weeks":J
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v24, " w"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1
.end method


# virtual methods
.method public getAllPhotosSize()I
    .locals 5

    .prologue
    .line 201
    const/4 v3, 0x0

    .line 202
    .local v3, "ret":I
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getPhotos()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "index":I
    :goto_0
    sget-object v4, Lcom/genie_connect/common/db/model/ActivityStreamPost;->ASSOCIATED_ENTITIES:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 205
    sget-object v4, Lcom/genie_connect/common/db/model/ActivityStreamPost;->ASSOCIATED_ENTITIES:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getAssociatedEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/util/ArrayList;

    move-result-object v0

    .line 206
    .local v0, "entityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    move v1, v2

    .line 209
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 210
    .end local v0    # "entityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    return v3
.end method

.method public getAssociatedEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    sget-object v0, Lcom/genie_connect/common/db/model/ActivityStreamPost$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 234
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 216
    :pswitch_0
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getExhibitorIds()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 218
    :pswitch_1
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getVisitorIds()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 220
    :pswitch_2
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getProductIds()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 222
    :pswitch_3
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getPoiIds()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 224
    :pswitch_4
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getDownloadableIds()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 226
    :pswitch_5
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getSessionIds()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 228
    :pswitch_6
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getSubSessionIds()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 230
    :pswitch_7
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getSpeakerIds()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getAttributes()[Lcom/genie_connect/common/db/entityfactory/EGAttribute;
    .locals 8

    .prologue
    .line 149
    sget-object v0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->COMMON_FIELDS_LONG_ID:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/16 v1, 0x15

    new-array v1, v1, [Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const/4 v2, 0x0

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "abuseStatus"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "liveStatus"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "message"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "noComments"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->LONG:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "timestamp"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->DATE:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "title"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "type"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string/jumbo v4, "url"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->STRING:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    const-string v4, "isFavourite"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;->BOOLEAN:Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttribute;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute$Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "imagesUrl"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "imagesUrl"

    sget-object v7, Lcom/genie_connect/common/db/model/ActivityStreamPost;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "associatedDownloadables"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "associatedDownloadables"

    sget-object v7, Lcom/genie_connect/common/db/model/ActivityStreamPost;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "associatedExhibitors"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "associatedExhibitors"

    sget-object v7, Lcom/genie_connect/common/db/model/ActivityStreamPost;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "associatedPOIs"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "associatedPOIs"

    sget-object v7, Lcom/genie_connect/common/db/model/ActivityStreamPost;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "associatedProducts"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "associatedProducts"

    sget-object v7, Lcom/genie_connect/common/db/model/ActivityStreamPost;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "associatedSessions"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "associatedSessions"

    sget-object v7, Lcom/genie_connect/common/db/model/ActivityStreamPost;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "associatedSubSessions"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "associatedSubSessions"

    sget-object v7, Lcom/genie_connect/common/db/model/ActivityStreamPost;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "associatedVisitors"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "associatedVisitors"

    sget-object v7, Lcom/genie_connect/common/db/model/ActivityStreamPost;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "associatedSpeakers"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "associatedSpeakers"

    sget-object v7, Lcom/genie_connect/common/db/model/ActivityStreamPost;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "comments"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "comments"

    sget-object v7, Lcom/genie_connect/common/db/model/ActivityStreamPost;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;

    const-string v4, "relatedTags"

    new-instance v5, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;

    const-string v6, "relatedTags"

    sget-object v7, Lcom/genie_connect/common/db/model/ActivityStreamPost;->ID:Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v5, v6, v7}, Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeArray;-><init>(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/EGAttributeReference;)V

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-instance v3, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;

    const-string v4, "author"

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/EGEmbeddedObjects;->AUTHOR_ATTRS:[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    invoke-direct {v3, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGAttributeEmbedded;-><init>(Ljava/lang/String;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->concat([Lcom/genie_connect/common/db/entityfactory/EGAttribute;[Lcom/genie_connect/common/db/entityfactory/EGAttribute;)[Lcom/genie_connect/common/db/entityfactory/EGAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorId()J
    .locals 6

    .prologue
    .line 272
    const-wide/16 v2, -0x1

    .line 274
    .local v2, "id":J
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getJson()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v4

    const-string v5, "author"

    invoke-interface {v4, v5}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v0

    .line 276
    .local v0, "author_json":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getJson()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v4

    const-string v5, "author"

    invoke-interface {v4, v5}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v4

    const-string/jumbo v5, "visitor"

    invoke-interface {v4, v5}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v1

    .line 281
    .local v1, "author_visitor_json":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v1, :cond_0

    .line 282
    const-string v4, "id"

    invoke-interface {v1, v4}, Lcom/genie_connect/common/platform/json/IJsonObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 286
    .end local v1    # "author_visitor_json":Lcom/genie_connect/common/platform/json/IJsonObject;
    :cond_0
    return-wide v2
.end method

.method public getDownloadableIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mDownloadbles:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mDownloadbles:Ljava/util/ArrayList;

    .line 242
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getJson()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    const-string v3, "associatedDownloadables"

    invoke-interface {v2, v3}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONArray(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v0

    .line 244
    .local v0, "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    if-eqz v0, :cond_0

    .line 245
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/genie_connect/common/platform/json/IJsonArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mDownloadbles:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonArray;->optLong(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mDownloadbles:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 511
    const-string v0, "activitystreamposts"

    return-object v0
.end method

.method public getExhibitorIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mExhibitors:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 256
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mExhibitors:Ljava/util/ArrayList;

    .line 259
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getJson()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    const-string v3, "associatedExhibitors"

    invoke-interface {v2, v3}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONArray(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v0

    .line 261
    .local v0, "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    if-eqz v0, :cond_0

    .line 262
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/genie_connect/common/platform/json/IJsonArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mExhibitors:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonArray;->optLong(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mExhibitors:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getIsFavourite()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->isFavourite:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPhotos()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mPhotos:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mPhotos:Ljava/util/ArrayList;

    .line 292
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getJson()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    const-string v3, "imagesUrl"

    invoke-interface {v2, v3}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONArray(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v0

    .line 294
    .local v0, "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    if-eqz v0, :cond_0

    .line 295
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/genie_connect/common/platform/json/IJsonArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mPhotos:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 300
    .end local v0    # "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mPhotos:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getPoiIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mPois:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 305
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mPois:Ljava/util/ArrayList;

    .line 306
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getJson()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    const-string v3, "associatedPOIs"

    invoke-interface {v2, v3}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONArray(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v0

    .line 308
    .local v0, "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    if-eqz v0, :cond_0

    .line 309
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/genie_connect/common/platform/json/IJsonArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mPois:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonArray;->optLong(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mPois:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getProductIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mProducts:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 319
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mProducts:Ljava/util/ArrayList;

    .line 320
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getJson()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    const-string v3, "associatedProducts"

    invoke-interface {v2, v3}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONArray(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v0

    .line 322
    .local v0, "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    if-eqz v0, :cond_0

    .line 323
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/genie_connect/common/platform/json/IJsonArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 324
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mProducts:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonArray;->optLong(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mProducts:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getSessionIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mSessions:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 334
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mSessions:Ljava/util/ArrayList;

    .line 336
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getJson()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    const-string v3, "associatedSessions"

    invoke-interface {v2, v3}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONArray(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v0

    .line 338
    .local v0, "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    if-eqz v0, :cond_0

    .line 339
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/genie_connect/common/platform/json/IJsonArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mSessions:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonArray;->optLong(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v0    # "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mSessions:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getSpeakerIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mSpeakers:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 350
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mSpeakers:Ljava/util/ArrayList;

    .line 351
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getJson()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    const-string v3, "associatedSpeakers"

    invoke-interface {v2, v3}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONArray(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v0

    .line 353
    .local v0, "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    if-eqz v0, :cond_0

    .line 354
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/genie_connect/common/platform/json/IJsonArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mSpeakers:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonArray;->optLong(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    .end local v0    # "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mSpeakers:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getSubSessionIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mSubsessions:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 365
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mSubsessions:Ljava/util/ArrayList;

    .line 366
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getJson()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    const-string v3, "associatedSubSessions"

    invoke-interface {v2, v3}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONArray(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v0

    .line 369
    .local v0, "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    if-eqz v0, :cond_0

    .line 370
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/genie_connect/common/platform/json/IJsonArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 371
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mSubsessions:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonArray;->optLong(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v0    # "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mSubsessions:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    const-string v0, "activityStreamPosts"

    return-object v0
.end method

.method public getViewType()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 380
    const/4 v3, 0x0

    .line 381
    .local v3, "len":I
    const/4 v1, 0x0

    .line 382
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getPhotos()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    move v2, v1

    .line 384
    .end local v1    # "index":I
    .local v2, "index":I
    :goto_0
    if-ge v3, v5, :cond_1

    sget-object v4, Lcom/genie_connect/common/db/model/ActivityStreamPost;->ASSOCIATED_ENTITIES:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 385
    sget-object v4, Lcom/genie_connect/common/db/model/ActivityStreamPost;->ASSOCIATED_ENTITIES:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getAssociatedEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/util/ArrayList;

    move-result-object v0

    .line 386
    .local v0, "entityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    move v2, v1

    .line 389
    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 390
    .end local v0    # "entityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_1
    if-le v3, v5, :cond_2

    .line 391
    const/4 v3, 0x4

    .line 393
    :cond_2
    return v3
.end method

.method public getVisitorIds()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mVisitors:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 398
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mVisitors:Ljava/util/ArrayList;

    .line 399
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getJson()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    const-string v3, "associatedVisitors"

    invoke-interface {v2, v3}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONArray(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v0

    .line 401
    .local v0, "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    if-eqz v0, :cond_0

    .line 402
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lcom/genie_connect/common/platform/json/IJsonArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mVisitors:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/genie_connect/common/platform/json/IJsonArray;->optLong(I)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 407
    .end local v0    # "arr":Lcom/genie_connect/common/platform/json/IJsonArray;
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->mVisitors:Ljava/util/ArrayList;

    return-object v2
.end method

.method protected setId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->id:Ljava/lang/Long;

    .line 522
    return-void
.end method

.method public setIsFavourite(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->isFavourite:Ljava/lang/Boolean;

    .line 573
    return-void
.end method
