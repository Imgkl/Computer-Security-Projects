.class public Lcom/eventgenie/android/activities/sessions/CalendarActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "CalendarActivity.java"


# static fields
.field public static final DAY_DATE_EXTRA:Ljava/lang/String; = "day_date"

.field public static final DAY_ID_EXTRA:Ljava/lang/String; = "day_id"

.field public static final FILTER_FAVORITE_EXTRA:Ljava/lang/String; = "is_favorite"


# instance fields
.field private mCalendar:Lcom/eventgenie/android/utils/managers/CalendarManager;

.field private mDayDate:Ljava/lang/String;

.field private mDayId:Ljava/lang/String;

.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mFirstRun:Z

.field private mHandler:Landroid/os/Handler;

.field private mHourHeight:I

.field private mIsBookmarked:Z

.field private mIsFavourite:Z

.field private mMarginScrollView:Lcom/eventgenie/android/ui/ObservableScrollView;

.field private mPageControl:Lcom/eventgenie/android/ui/PageControl;

.field private mPageControlBlock:Landroid/view/View;

.field private mSwipeView:Lcom/eventgenie/android/ui/SwipeView;

.field private mSwipeViewHeader:Lcom/eventgenie/android/ui/SwipeView;

.field private visibleGantHeightPixels:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 81
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mIsFavourite:Z

    .line 82
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mIsBookmarked:Z

    .line 100
    const/16 v0, 0x50

    iput v0, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mHourHeight:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mFirstRun:Z

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/sessions/CalendarActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/sessions/CalendarActivity;

    .prologue
    .line 72
    iget v0, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->visibleGantHeightPixels:I

    return v0
.end method

.method static synthetic access$002(Lcom/eventgenie/android/activities/sessions/CalendarActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/sessions/CalendarActivity;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->visibleGantHeightPixels:I

    return p1
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/sessions/CalendarActivity;)Lcom/eventgenie/android/ui/ObservableScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/sessions/CalendarActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mMarginScrollView:Lcom/eventgenie/android/ui/ObservableScrollView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/eventgenie/android/activities/sessions/CalendarActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/sessions/CalendarActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mFirstRun:Z

    return p1
.end method

.method public static getNowEventTime(Landroid/content/Context;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getTimeZoneOfEvent()Ljava/util/TimeZone;

    move-result-object v0

    .line 216
    .local v0, "eventTimeZone":Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 217
    .local v4, "nowMillis":J
    invoke-virtual {v0, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 219
    .local v2, "now":J
    return-wide v2
.end method

.method public static getNowEventTimeDate(Landroid/content/Context;)Ljava/util/Calendar;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 230
    .local v0, "date":Ljava/util/Calendar;
    invoke-static {p0}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->getNowEventTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 231
    return-object v0
.end method

.method public static getNowTime(Ljava/util/TimeZone;)Landroid/text/format/Time;
    .locals 2
    .param p0, "timeZone"    # Ljava/util/TimeZone;

    .prologue
    .line 338
    new-instance v0, Landroid/text/format/Time;

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 339
    .local v0, "nowTime":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 341
    return-object v0
.end method

.method private populateSchedule()V
    .locals 52

    .prologue
    .line 235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mCalendar:Lcom/eventgenie/android/utils/managers/CalendarManager;

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/managers/CalendarManager;->removeAllSessionBlocks()V

    .line 238
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mIsFavourite:Z

    if-eqz v4, :cond_1

    .line 239
    const-class v4, Lcom/genie_connect/android/repository/AgendaItemRepository;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/android/repository/AgendaItemRepository;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mDayId:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v15, v0}, Lcom/genie_connect/android/repository/AgendaItemRepository;->getMyAgenda(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v38

    .line 256
    .local v38, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    :goto_0
    invoke-interface/range {v38 .. v38}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v44

    .line 257
    .local v44, "hasData":Z
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getTimeZoneOfEvent()Ljava/util/TimeZone;

    move-result-object v42

    .line 259
    .local v42, "eventTimeZone":Ljava/util/TimeZone;
    :goto_1
    if-eqz v44, :cond_7

    .line 260
    const-string/jumbo v4, "track"

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 261
    .local v8, "track":Ljava/lang/String;
    const-string v4, "id"

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 262
    .local v6, "blockId":J
    const-string v4, "name"

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 263
    .local v9, "title":Ljava/lang/String;
    const-string v4, "runningTime_from"

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/ui/help/UIUtils;->parseTime(Ljava/lang/String;)J

    move-result-wide v10

    .line 264
    .local v10, "start":J
    const-string v4, "runningTime_to"

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/ui/help/UIUtils;->parseTime(Ljava/lang/String;)J

    move-result-wide v12

    .line 265
    .local v12, "end":J
    const-string v4, "colour"

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 266
    .local v14, "colour":Ljava/lang/String;
    const-string v4, "isFavourite"

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v43

    .line 267
    .local v43, "fav":I
    const-string v4, "isBookmarked"

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 268
    .local v20, "bookmarked":I
    const-string v4, "hasNote"

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v45

    .line 269
    .local v45, "hasNote":I
    const-string v4, "status"

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->optIntAsWrapperType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    .line 270
    .local v34, "status":Ljava/lang/Integer;
    const-string v4, "itemTypes"

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 272
    .local v48, "scehduleItemType":Ljava/lang/String;
    const/16 v18, 0x0

    .line 274
    .local v18, "type":I
    :try_start_0
    const-string/jumbo v4, "type"

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 279
    :goto_2
    sget-object v4, Lcom/genie_connect/common/db/model/AgendaItem$Properties;->IsWaitlisted:Lde/greenrobot/dao/Property;

    invoke-virtual {v4}, Lde/greenrobot/dao/Property;->getColumnName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v4, v5}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 281
    .local v19, "waitlisted":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mIsFavourite:Z

    if-nez v4, :cond_5

    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mCalendar:Lcom/eventgenie/android/utils/managers/CalendarManager;

    const/4 v5, 0x1

    move/from16 v0, v43

    if-ne v0, v5, :cond_2

    const/4 v15, 0x1

    :goto_3
    const/4 v5, 0x1

    move/from16 v0, v45

    if-ne v0, v5, :cond_3

    const/16 v16, 0x1

    :goto_4
    const/4 v5, 0x1

    move/from16 v0, v43

    if-eq v0, v5, :cond_0

    const/4 v5, 0x1

    move/from16 v0, v45

    if-eq v0, v5, :cond_0

    const/4 v5, 0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_4

    :cond_0
    const/16 v17, 0x1

    :goto_5
    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v19}, Lcom/eventgenie/android/utils/managers/CalendarManager;->addScheduleSessionBlock(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZZIZ)V

    .line 288
    :goto_6
    invoke-interface/range {v38 .. v38}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v44

    .line 289
    goto/16 :goto_1

    .line 241
    .end local v6    # "blockId":J
    .end local v8    # "track":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "start":J
    .end local v12    # "end":J
    .end local v14    # "colour":Ljava/lang/String;
    .end local v18    # "type":I
    .end local v19    # "waitlisted":Z
    .end local v20    # "bookmarked":I
    .end local v34    # "status":Ljava/lang/Integer;
    .end local v38    # "cursor":Luk/co/alt236/easycursor/EasyCursor;
    .end local v42    # "eventTimeZone":Ljava/util/TimeZone;
    .end local v43    # "fav":I
    .end local v44    # "hasData":Z
    .end local v45    # "hasNote":I
    .end local v48    # "scehduleItemType":Ljava/lang/String;
    :cond_1
    const-class v4, Lcom/genie_connect/android/repository/SessionRepository;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/android/repository/SessionRepository;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mDayId:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v5, v15, v0, v1}, Lcom/genie_connect/android/repository/SessionRepository;->getSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v38

    .restart local v38    # "cursor":Luk/co/alt236/easycursor/EasyCursor;
    goto/16 :goto_0

    .line 275
    .restart local v6    # "blockId":J
    .restart local v8    # "track":Ljava/lang/String;
    .restart local v9    # "title":Ljava/lang/String;
    .restart local v10    # "start":J
    .restart local v12    # "end":J
    .restart local v14    # "colour":Ljava/lang/String;
    .restart local v18    # "type":I
    .restart local v20    # "bookmarked":I
    .restart local v34    # "status":Ljava/lang/Integer;
    .restart local v42    # "eventTimeZone":Ljava/util/TimeZone;
    .restart local v43    # "fav":I
    .restart local v44    # "hasData":Z
    .restart local v45    # "hasNote":I
    .restart local v48    # "scehduleItemType":Ljava/lang/String;
    :catch_0
    move-exception v39

    .line 276
    .local v39, "e":Ljava/lang/IllegalArgumentException;
    const/16 v18, 0x0

    goto :goto_2

    .line 282
    .end local v39    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v19    # "waitlisted":Z
    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    goto :goto_5

    .line 284
    :cond_5
    invoke-static/range {v48 .. v48}, Lcom/eventgenie/android/ui/help/SessionHelper;->getScheduleItemType(Ljava/lang/String;)Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;

    move-result-object v31

    .line 285
    .local v31, "itemType":Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mCalendar:Lcom/eventgenie/android/utils/managers/CalendarManager;

    move-object/from16 v21, v0

    const/4 v4, 0x1

    move/from16 v0, v45

    if-ne v0, v4, :cond_6

    const/16 v32, 0x1

    :goto_7
    const/16 v33, 0x0

    move-object/from16 v22, p0

    move-wide/from16 v23, v6

    move-object/from16 v25, v9

    move-wide/from16 v26, v10

    move-wide/from16 v28, v12

    move-object/from16 v30, v14

    move/from16 v35, v19

    invoke-virtual/range {v21 .. v35}, Lcom/eventgenie/android/utils/managers/CalendarManager;->addMyAgendaSessionBlock(Landroid/content/Context;JLjava/lang/String;JJLjava/lang/String;Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;ZZLjava/lang/Integer;Z)V

    goto :goto_6

    :cond_6
    const/16 v32, 0x0

    goto :goto_7

    .line 291
    .end local v6    # "blockId":J
    .end local v8    # "track":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    .end local v10    # "start":J
    .end local v12    # "end":J
    .end local v14    # "colour":Ljava/lang/String;
    .end local v18    # "type":I
    .end local v19    # "waitlisted":Z
    .end local v20    # "bookmarked":I
    .end local v31    # "itemType":Lcom/eventgenie/android/ui/help/SessionHelper$ScheduleItemType;
    .end local v34    # "status":Ljava/lang/Integer;
    .end local v43    # "fav":I
    .end local v45    # "hasNote":I
    .end local v48    # "scehduleItemType":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->close(Landroid/database/Cursor;)V

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 298
    .local v36, "currentNow":J
    move-object/from16 v0, v42

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v4, v4

    add-long v46, v36, v4

    .line 300
    .local v46, "nowMillis":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mDayDate:Ljava/lang/String;

    invoke-static {v4}, Lcom/eventgenie/android/ui/help/UIUtils;->parseDayMidnight(Ljava/lang/String;)J

    move-result-wide v50

    .line 301
    .local v50, "startMillis":J
    const-wide/32 v4, 0x5265c00

    add-long v40, v50, v4

    .line 304
    .local v40, "endMillis":J
    cmp-long v4, v50, v46

    if-gtz v4, :cond_8

    cmp-long v4, v46, v40

    if-gtz v4, :cond_8

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mCalendar:Lcom/eventgenie/android/utils/managers/CalendarManager;

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/managers/CalendarManager;->showNowView()V

    .line 308
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mFirstRun:Z

    if-eqz v4, :cond_8

    .line 310
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/eventgenie/android/activities/sessions/CalendarActivity$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v5, v0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarActivity$1;-><init>(Lcom/eventgenie/android/activities/sessions/CalendarActivity;Ljava/util/TimeZone;)V

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 328
    :cond_8
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super/range {p0 .. p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mFirstRun:Z

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 114
    .local v8, "intent":Landroid/content/Intent;
    const-string v1, "day_id"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mDayId:Ljava/lang/String;

    .line 115
    const-string v1, "is_favorite"

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mIsFavourite:Z

    .line 116
    const-string v1, "is_bookmarked"

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mIsBookmarked:Z

    .line 117
    const-string v1, "day_date"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mDayDate:Ljava/lang/String;

    .line 119
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mIsFavourite:Z

    if-nez v1, :cond_2

    .line 120
    sget v1, Lcom/eventgenie/android/R$layout;->activity_schedule:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->setContentView(I)V

    .line 125
    :goto_0
    sget v1, Lcom/eventgenie/android/R$id;->page_control:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/ui/PageControl;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mPageControl:Lcom/eventgenie/android/ui/PageControl;

    .line 126
    sget v1, Lcom/eventgenie/android/R$id;->swipe_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/ui/SwipeView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mSwipeView:Lcom/eventgenie/android/ui/SwipeView;

    .line 127
    sget v1, Lcom/eventgenie/android/R$id;->swipe_view_header:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/ui/SwipeView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mSwipeViewHeader:Lcom/eventgenie/android/ui/SwipeView;

    .line 128
    sget v1, Lcom/eventgenie/android/R$id;->margin_time_scroll:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/ui/ObservableScrollView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mMarginScrollView:Lcom/eventgenie/android/ui/ObservableScrollView;

    .line 129
    sget v1, Lcom/eventgenie/android/R$id;->page_control_block:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mPageControlBlock:Landroid/view/View;

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 134
    const/16 v1, 0x2e

    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v9

    .line 136
    .local v9, "offset":I
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->getRequestedOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v16, v1, v9

    .line 142
    .local v16, "width":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mSwipeView:Lcom/eventgenie/android/ui/SwipeView;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/ui/SwipeView;->setPageWidth(I)I

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mSwipeViewHeader:Lcom/eventgenie/android/ui/SwipeView;

    if-eqz v1, :cond_0

    .line 144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mSwipeViewHeader:Lcom/eventgenie/android/ui/SwipeView;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/ui/SwipeView;->setPageWidth(I)I

    .line 147
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mIsBookmarked:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mIsFavourite:Z

    if-nez v1, :cond_5

    .line 150
    const-class v1, Lcom/genie_connect/android/repository/TrackRepository;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/repository/TrackRepository;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mDayId:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/genie_connect/android/repository/TrackRepository;->getTracks(Ljava/lang/String;ZLjava/util/List;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v15

    .line 151
    .local v15, "tracks":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v12, "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/Track;>;"
    invoke-interface {v15}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v7

    .line 154
    .local v7, "hasData":Z
    :goto_2
    if-eqz v7, :cond_4

    .line 155
    const-string/jumbo v1, "track"

    invoke-interface {v15, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 156
    .local v13, "trackName":Ljava/lang/String;
    const-string v1, "priority"

    invoke-interface {v15, v1}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 157
    .local v14, "trackPriority":I
    const-string v1, "colour"

    invoke-interface {v15, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 159
    .local v11, "trackColour":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 160
    new-instance v10, Lcom/eventgenie/android/container/Track;

    invoke-direct {v10, v13, v14, v11}, Lcom/eventgenie/android/container/Track;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    .local v10, "t":Lcom/eventgenie/android/container/Track;
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v10    # "t":Lcom/eventgenie/android/container/Track;
    :cond_1
    invoke-interface {v15}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v7

    .line 164
    goto :goto_2

    .line 122
    .end local v7    # "hasData":Z
    .end local v9    # "offset":I
    .end local v11    # "trackColour":Ljava/lang/String;
    .end local v12    # "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/Track;>;"
    .end local v13    # "trackName":Ljava/lang/String;
    .end local v14    # "trackPriority":I
    .end local v15    # "tracks":Luk/co/alt236/easycursor/EasyCursor;
    .end local v16    # "width":I
    :cond_2
    sget v1, Lcom/eventgenie/android/R$layout;->my_agenda:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->setContentView(I)V

    goto/16 :goto_0

    .line 139
    .restart local v9    # "offset":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v16, v1, v9

    .restart local v16    # "width":I
    goto :goto_1

    .line 166
    .restart local v7    # "hasData":Z
    .restart local v12    # "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/Track;>;"
    .restart local v15    # "tracks":Luk/co/alt236/easycursor/EasyCursor;
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->close(Landroid/database/Cursor;)V

    .line 167
    new-instance v1, Lcom/eventgenie/android/utils/managers/CalendarManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mDayId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v12, v2}, Lcom/eventgenie/android/utils/managers/CalendarManager;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mCalendar:Lcom/eventgenie/android/utils/managers/CalendarManager;

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mCalendar:Lcom/eventgenie/android/utils/managers/CalendarManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mSwipeView:Lcom/eventgenie/android/ui/SwipeView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mPageControl:Lcom/eventgenie/android/ui/PageControl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mSwipeViewHeader:Lcom/eventgenie/android/ui/SwipeView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mMarginScrollView:Lcom/eventgenie/android/ui/ObservableScrollView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mPageControlBlock:Landroid/view/View;

    invoke-virtual/range {v1 .. v6}, Lcom/eventgenie/android/utils/managers/CalendarManager;->attachToSwipeView(Lcom/eventgenie/android/ui/SwipeView;Lcom/eventgenie/android/ui/PageControl;Lcom/eventgenie/android/ui/SwipeView;Lcom/eventgenie/android/ui/ObservableScrollView;Landroid/view/View;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mCalendar:Lcom/eventgenie/android/utils/managers/CalendarManager;

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/managers/CalendarManager;->addHeaderBlocks()V

    .line 178
    .end local v7    # "hasData":Z
    .end local v12    # "trackList":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/Track;>;"
    .end local v15    # "tracks":Luk/co/alt236/easycursor/EasyCursor;
    :goto_3
    const/16 v1, 0x50

    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mHourHeight:I

    .line 180
    return-void

    .line 174
    :cond_5
    new-instance v1, Lcom/eventgenie/android/utils/managers/CalendarManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mDayId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/eventgenie/android/utils/managers/CalendarManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mCalendar:Lcom/eventgenie/android/utils/managers/CalendarManager;

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mCalendar:Lcom/eventgenie/android/utils/managers/CalendarManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mSwipeView:Lcom/eventgenie/android/ui/SwipeView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mPageControl:Lcom/eventgenie/android/ui/PageControl;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mMarginScrollView:Lcom/eventgenie/android/ui/ObservableScrollView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mPageControlBlock:Landroid/view/View;

    invoke-virtual/range {v1 .. v6}, Lcom/eventgenie/android/utils/managers/CalendarManager;->attachToSwipeView(Lcom/eventgenie/android/ui/SwipeView;Lcom/eventgenie/android/ui/PageControl;Lcom/eventgenie/android/ui/SwipeView;Lcom/eventgenie/android/ui/ObservableScrollView;Landroid/view/View;)V

    goto :goto_3
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onResume()V

    .line 185
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->populateSchedule()V

    .line 186
    return-void
.end method

.method protected scrollToTime(II)F
    .locals 6
    .param p1, "windowHeight"    # I
    .param p2, "hour"    # I

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v4

    const-string v5, "sdfsadfasdf"

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->getDayBoundary(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 198
    .local v0, "dayBoundary":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 200
    .local v2, "mStartHour":I
    iget v4, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mHourHeight:I

    div-int v1, p1, v4

    .line 201
    .local v1, "hoursPerScreen":I
    div-int/lit8 v3, v1, 0x2

    .line 203
    .local v3, "middle":I
    add-int/lit8 v4, p2, -0x1

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/eventgenie/android/activities/sessions/CalendarActivity;->mHourHeight:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    return v4
.end method
