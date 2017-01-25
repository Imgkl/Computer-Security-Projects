.class public Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "MeetingAvailability2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/activities/base/GenieBaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATA_PAGE_DAILY_QUOTAS:I = 0x2

.field private static final DATA_PAGE_LIST:I = 0x1

.field public static final MEETING_LOCATION_DEFAULT:Ljava/lang/String; = "meeting_location"

.field public static final MEETING_RESCHEDULE_ID_EXTRA:Ljava/lang/String; = "meeting_reschedule_id"

.field public static final MEETING_SUBJECT_DEFAULT:Ljava/lang/String; = "meeting_subject"

.field public static final MEETING_TYPE_EXTRA:Ljava/lang/String; = "meeting_type"

.field public static final MESSAGE_TO_ID_EXTRA:Ljava/lang/String; = "message_to_id"

.field public static final RESCHEDULE_MEETING_EXTRA:Ljava/lang/String; = "RESCHEDULE_MEETING_EXTRA"


# instance fields
.field public dateValid:Z

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomText:Landroid/widget/TextView;

.field private mCalendarHelper:Lcom/eventgenie/android/ui/help/CalendarGridHelper;

.field private mContentFlipper:Landroid/widget/ViewFlipper;

.field private mDataFlipper:Landroid/widget/ViewFlipper;

.field private mGridView:Landroid/support/v7/widget/GridLayout;

.field private mListView:Landroid/widget/ListView;

.field private mMeetingType:I

.field private mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRescheduleMeeting:Z

.field private mRescheduleMeetingId:J

.field private mSelectedButton:Landroid/widget/Button;

.field private mToId:J

.field private mTopText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mRescheduleMeeting:Z

    .line 92
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mRescheduleMeetingId:J

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->dateValid:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mSelectedButton:Landroid/widget/Button;

    return-void
.end method

.method private displayContentPage(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mContentFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mContentFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 112
    :cond_0
    return-void
.end method

.method private formatLegend()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 116
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mCalendarHelper:Lcom/eventgenie/android/ui/help/CalendarGridHelper;

    sget v0, Lcom/eventgenie/android/R$id;->day_available:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->formatForDayDisplayButton(Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 117
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mCalendarHelper:Lcom/eventgenie/android/ui/help/CalendarGridHelper;

    sget v0, Lcom/eventgenie/android/R$id;->day_non_event:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v2, v2}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->formatForDayDisplayButton(Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 120
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mCalendarHelper:Lcom/eventgenie/android/ui/help/CalendarGridHelper;

    sget v0, Lcom/eventgenie/android/R$id;->day_not_available:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->formatForDayDisplayButton(Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 121
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mCalendarHelper:Lcom/eventgenie/android/ui/help/CalendarGridHelper;

    sget v0, Lcom/eventgenie/android/R$id;->day_not_available:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->formatForDisabled(Landroid/widget/TextView;)V

    .line 122
    return-void
.end method

.method private populateUi()V
    .locals 18

    .prologue
    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v13}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->isDone()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    .line 310
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v13}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->getMeetingCreditsNetworkResult()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v10

    .line 311
    .local v10, "meetingCreditsResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v13}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->getAvailabilityNetworkResult()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v2

    .line 312
    .local v2, "availabilityResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v13}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->getMeetingQuotaTypeResult()Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v11

    .line 315
    .local v11, "meetingQuotaType":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    invoke-static {v2}, Lcom/genie_connect/common/net/container/NetworkResult;->isValid(Lcom/genie_connect/common/net/container/NetworkResultGsonContent;)Z

    move-result v4

    .line 316
    .local v4, "isAvailabilityResultValid":Z
    invoke-static {v10}, Lcom/genie_connect/common/net/container/NetworkResult;->isValid(Lcom/genie_connect/common/net/container/NetworkResultGsonContent;)Z

    move-result v5

    .line 317
    .local v5, "isMeetingCreditResultValid":Z
    invoke-static {v11}, Lcom/genie_connect/common/net/container/NetworkResult;->isValid(Lcom/genie_connect/common/net/container/NetworkResultGsonContent;)Z

    move-result v6

    .line 319
    .local v6, "isMeetingQuotaTypeValid":Z
    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mRescheduleMeeting:Z

    if-eqz v13, :cond_8

    .line 321
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v13}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->getMeetingCreditsObject()Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;

    move-result-object v9

    .line 324
    .local v9, "meetingCreditData":Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;
    if-eqz v6, :cond_2

    .line 325
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v13}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->getMeetingQuotaTypeObject()Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;

    move-result-object v13

    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;->getMeetingQuotaType()I

    move-result v12

    .line 330
    .local v12, "quotaType":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mRescheduleMeeting:Z

    if-eqz v13, :cond_3

    .line 331
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 341
    .local v8, "meetingCreditAmount":Ljava/lang/Integer;
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ MEETINGS2: MeetingCredits = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", quotaType: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 343
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_7

    .line 344
    if-eqz v4, :cond_6

    .line 345
    invoke-virtual {v2}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;

    .line 347
    .local v1, "availability":Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;->isValid()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;->getData()Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$MeetingAvailabilityResponseData;->getAvailability()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_5

    .line 348
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mCalendarHelper:Lcom/eventgenie/android/ui/help/CalendarGridHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v14}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->getMeetingDays()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v13, v1, v14}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->populate(Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;Ljava/util/Set;)V

    .line 350
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mRescheduleMeeting:Z

    if-nez v13, :cond_1

    sget-object v13, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$MeetingQuotaType;->QUOTA_CREDIT_DEBIT:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v12, v13, :cond_1

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mCalendarHelper:Lcom/eventgenie/android/ui/help/CalendarGridHelper;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->getNumberOfCreditsAvailableText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    sget v16, Lcom/eventgenie/android/R$color;->actionbar_gray:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mGridView:Landroid/support/v7/widget/GridLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/GridLayout;->getRowCount()I

    move-result v17

    invoke-virtual/range {v13 .. v17}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->addFullLengthText(Ljava/lang/String;ZLjava/lang/Integer;I)V

    .line 357
    :cond_1
    const/4 v3, 0x1

    .line 401
    .end local v1    # "availability":Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;
    .end local v2    # "availabilityResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .end local v4    # "isAvailabilityResultValid":Z
    .end local v5    # "isMeetingCreditResultValid":Z
    .end local v6    # "isMeetingQuotaTypeValid":Z
    .end local v8    # "meetingCreditAmount":Ljava/lang/Integer;
    .end local v9    # "meetingCreditData":Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;
    .end local v10    # "meetingCreditsResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .end local v11    # "meetingQuotaType":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .end local v12    # "quotaType":I
    .local v3, "displayPage":I
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->displayContentPage(I)V

    .line 402
    return-void

    .line 327
    .end local v3    # "displayPage":I
    .restart local v2    # "availabilityResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .restart local v4    # "isAvailabilityResultValid":Z
    .restart local v5    # "isMeetingCreditResultValid":Z
    .restart local v6    # "isMeetingQuotaTypeValid":Z
    .restart local v9    # "meetingCreditData":Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;
    .restart local v10    # "meetingCreditsResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .restart local v11    # "meetingQuotaType":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    :cond_2
    sget-object v13, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$MeetingQuotaType;->QUOTA_CREDIT_DEBIT:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .restart local v12    # "quotaType":I
    goto/16 :goto_0

    .line 332
    :cond_3
    sget-object v13, Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel$MeetingQuotaType;->QUOTA_CREDIT_DEBIT:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v12, v13, :cond_4

    .line 333
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 334
    .restart local v8    # "meetingCreditAmount":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mDataFlipper:Landroid/widget/ViewFlipper;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 335
    new-instance v7, Lcom/eventgenie/android/ui/help/QuotaTableHelper;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/eventgenie/android/ui/help/QuotaTableHelper;-><init>(Landroid/app/Activity;)V

    .line 336
    .local v7, "maker":Lcom/eventgenie/android/ui/help/QuotaTableHelper;
    sget v13, Lcom/eventgenie/android/R$id;->section_daily_quotas:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v14}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->getMeetingQuotaTypeObject()Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Lcom/eventgenie/android/ui/help/QuotaTableHelper;->populate(Landroid/view/View;Lcom/genie_connect/android/net/container/gson/rpc/ShowMeetingQuotaDetailsRpcModel;)Z

    goto/16 :goto_1

    .line 338
    .end local v7    # "maker":Lcom/eventgenie/android/ui/help/QuotaTableHelper;
    .end local v8    # "meetingCreditAmount":Ljava/lang/Integer;
    :cond_4
    invoke-static {v9}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->sanitiseMeetingCredits(Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;)Ljava/lang/Integer;

    move-result-object v8

    .restart local v8    # "meetingCreditAmount":Ljava/lang/Integer;
    goto/16 :goto_1

    .line 360
    .restart local v1    # "availability":Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mTopText:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mBottomText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v14

    sget-object v15, Lcom/genie_connect/android/db/config/misc/Label;->FINDING_AVAILABILITY_FAILED:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v14, v15}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->showSendMessageButton()V

    .line 364
    const/4 v3, 0x0

    .restart local v3    # "displayPage":I
    goto :goto_2

    .line 368
    .end local v1    # "availability":Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel;
    .end local v3    # "displayPage":I
    :cond_6
    const-string v13, "^ MEETINGS2: Availability result is invalid..."

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 369
    sget v13, Lcom/eventgenie/android/R$string;->meetings_v2_generic_error:I

    sget-object v14, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 374
    const/4 v3, 0x0

    .line 375
    .restart local v3    # "displayPage":I
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->finish()V

    goto :goto_2

    .line 379
    .end local v3    # "displayPage":I
    :cond_7
    sget v13, Lcom/eventgenie/android/R$id;->progress:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mTopText:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mBottomText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v14

    sget-object v15, Lcom/genie_connect/android/db/config/misc/Label;->NOT_ENOUGH_MEETING_CREDITS:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v14, v15}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    invoke-direct/range {p0 .. p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->showSendMessageButton()V

    .line 383
    const/4 v3, 0x0

    .restart local v3    # "displayPage":I
    goto/16 :goto_2

    .line 387
    .end local v3    # "displayPage":I
    .end local v8    # "meetingCreditAmount":Ljava/lang/Integer;
    .end local v9    # "meetingCreditData":Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;
    .end local v12    # "quotaType":I
    :cond_8
    const-string v13, "^ MEETINGS2: Credit result is invalid..."

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 388
    sget v13, Lcom/eventgenie/android/R$string;->meetings_v2_generic_error:I

    sget-object v14, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 393
    const/4 v3, 0x0

    .line 394
    .restart local v3    # "displayPage":I
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->finish()V

    goto/16 :goto_2

    .line 397
    .end local v2    # "availabilityResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .end local v3    # "displayPage":I
    .end local v4    # "isAvailabilityResultValid":Z
    .end local v5    # "isMeetingCreditResultValid":Z
    .end local v6    # "isMeetingQuotaTypeValid":Z
    .end local v10    # "meetingCreditsResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    .end local v11    # "meetingQuotaType":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    :cond_9
    const/4 v3, 0x0

    .line 398
    .restart local v3    # "displayPage":I
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    goto/16 :goto_2
.end method

.method private static sanitiseMeetingCredits(Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;)Ljava/lang/Integer;
    .locals 1
    .param p0, "creditData"    # Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;

    .prologue
    .line 434
    if-eqz p0, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingCreditsRpcModel$MeetingCreditsResponseData;->getTotalCreditAvailable()Ljava/lang/Integer;

    move-result-object v0

    .line 437
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private showSendMessageButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 405
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 407
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->getMessageCreditsObject()Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->getMessageCreditsObject()Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;->getTotalCreditAvailable()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isEnableMessages()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_light_email:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->send_message:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton1(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->ONE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    sget v2, Lcom/eventgenie/android/R$string;->send_message:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setCustomButtonTag(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;Ljava/lang/Object;)V

    .line 417
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 418
    return-void

    .line 413
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_light_cancel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->dismiss:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton1(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->ONE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    sget v2, Lcom/eventgenie/android/R$string;->dismiss:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setCustomButtonTag(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 126
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 128
    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mCalendarHelper:Lcom/eventgenie/android/ui/help/CalendarGridHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->getAvailabilityForDay(Ljava/lang/String;)Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;

    move-result-object v0

    .line 130
    .local v0, "avail":Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;
    if-eqz v0, :cond_1

    .line 131
    new-instance v1, Lcom/eventgenie/android/adapters/other/MeetingTimeSlotsAdapter;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;->getTimeSlots()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/eventgenie/android/adapters/other/MeetingTimeSlotsAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 132
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    .line 136
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mSelectedButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mSelectedButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 140
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 142
    check-cast p1, Landroid/widget/Button;

    .end local p1    # "v":Landroid/view/View;
    iput-object p1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mSelectedButton:Landroid/widget/Button;

    .line 144
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mDataFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 145
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mDataFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v3}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 149
    .end local v0    # "avail":Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    .line 158
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->finish()V

    .line 161
    :cond_0
    sget v0, Lcom/eventgenie/android/R$layout;->activity_meeting_availability_v2:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->setContentView(I)V

    .line 163
    sget v0, Lcom/eventgenie/android/R$id;->topText:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mTopText:Landroid/widget/TextView;

    .line 164
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/android/db/config/misc/Label;->FINDING_AVAILABILITY:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "findAvailabilityText":Ljava/lang/String;
    invoke-static {v7}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mTopText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_1
    sget v0, Lcom/eventgenie/android/R$id;->bottomText:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mBottomText:Landroid/widget/TextView;

    .line 169
    sget v0, Lcom/eventgenie/android/R$id;->progress:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 171
    sget v0, Lcom/eventgenie/android/R$id;->grid:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GridLayout;

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mGridView:Landroid/support/v7/widget/GridLayout;

    .line 172
    sget v0, Lcom/eventgenie/android/R$id;->contentFlipper:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mContentFlipper:Landroid/widget/ViewFlipper;

    .line 173
    sget v0, Lcom/eventgenie/android/R$id;->timeViewFlipper:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mDataFlipper:Landroid/widget/ViewFlipper;

    .line 174
    sget v0, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mListView:Landroid/widget/ListView;

    .line 175
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mContentFlipper:Landroid/widget/ViewFlipper;

    sget v1, Lcom/eventgenie/android/R$anim;->fadein:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 178
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mContentFlipper:Landroid/widget/ViewFlipper;

    sget v1, Lcom/eventgenie/android/R$anim;->fadeout:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 179
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mDataFlipper:Landroid/widget/ViewFlipper;

    sget v1, Lcom/eventgenie/android/R$anim;->fadein:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 180
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mDataFlipper:Landroid/widget/ViewFlipper;

    sget v1, Lcom/eventgenie/android/R$anim;->fadeout:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 182
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->meeting_new:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v0, Lcom/eventgenie/android/ui/help/CalendarGridHelper;

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mGridView:Landroid/support/v7/widget/GridLayout;

    invoke-direct {v0, p0, v1}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/GridLayout;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mCalendarHelper:Lcom/eventgenie/android/ui/help/CalendarGridHelper;

    .line 185
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->formatLegend()V

    .line 187
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 188
    .local v6, "b":Landroid/os/Bundle;
    if-eqz v6, :cond_4

    .line 189
    const-string v0, "message_to_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mToId:J

    .line 190
    const-string v0, "RESCHEDULE_MEETING_EXTRA"

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mRescheduleMeeting:Z

    .line 191
    const-string v0, "meeting_reschedule_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mRescheduleMeetingId:J

    .line 192
    const-string v0, "meeting_type"

    const/4 v1, -0x1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mMeetingType:I

    .line 194
    iget-wide v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mRescheduleMeetingId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->meeting_reschedule:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    .line 208
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    if-nez v0, :cond_3

    .line 209
    new-instance v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    iget-wide v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mToId:J

    iget-boolean v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mRescheduleMeeting:Z

    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    sget-object v4, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;->MODE_REARRANGE_MEETING:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    :goto_1
    iget v5, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mMeetingType:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;-><init>(Landroid/content/Context;JLcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;I)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    .line 215
    :cond_3
    sget v0, Lcom/eventgenie/android/R$id;->header_instructions:I

    sget v1, Lcom/eventgenie/android/R$string;->meeting_arrange_instructions:I

    invoke-static {v0, v1, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(IILandroid/app/Activity;)V

    .line 216
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->startPendingTask()V

    .line 217
    return-void

    .line 198
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->finish()V

    goto :goto_0

    .line 209
    :cond_5
    sget-object v4, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;->MODE_ARRANGE_MEETING:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    goto :goto_1
.end method

.method public onCustomButton1Click(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    sget v0, Lcom/eventgenie/android/R$string;->send_message:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->ONE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getCustomButtonTag(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-wide v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mToId:J

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getMessageComposeIntent(Landroid/content/Context;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 222
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->finish()V

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->finish()V

    .line 225
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->disconnect()V

    .line 230
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onDestroy()V

    .line 231
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mAdapter:Landroid/widget/ArrayAdapter;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;

    .line 236
    .local v10, "timeSlot":Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mCalendarHelper:Lcom/eventgenie/android/ui/help/CalendarGridHelper;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mSelectedButton:Landroid/widget/Button;

    invoke-virtual {v12}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Lcom/eventgenie/android/ui/help/CalendarGridHelper;->getAvailabilityForDay(Ljava/lang/String;)Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;

    move-result-object v2

    .line 237
    .local v2, "avail":Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;
    if-eqz v2, :cond_0

    if-nez v10, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;->getEventDay()Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->getRunningTime()Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/genie_connect/android/net/container/gson/objects/RunningTimeGsonModel;->getFrom()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->formatDate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, "dateString":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->formatTime(Landroid/content/Context;Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;)Ljava/lang/String;

    move-result-object v11

    .line 242
    .local v11, "timeString":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-class v12, Lcom/eventgenie/android/activities/networking/v2/MeetingFinaliseV2Activity;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 245
    .local v3, "b":Landroid/os/Bundle;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v9, "locationLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v8, "locationKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;->getMeetingLocations()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/genie_connect/android/net/container/gson/entities/MeetingLocationGsonModel;

    .line 249
    .local v7, "location":Lcom/genie_connect/android/net/container/gson/entities/MeetingLocationGsonModel;
    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/gson/entities/MeetingLocationGsonModel;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/gson/entities/MeetingLocationGsonModel;->get_id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    .end local v7    # "location":Lcom/genie_connect/android/net/container/gson/entities/MeetingLocationGsonModel;
    :cond_2
    const-string v12, "meeting_date_label"

    invoke-virtual {v3, v12, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v12, "meeting_time_label"

    invoke-virtual {v3, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v12, "meeting_date_value"

    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/rpc/MeetingAvailabilityRpcModel$Availability;->getEventDay()Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;

    move-result-object v13

    invoke-virtual {v13}, Lcom/genie_connect/android/net/container/gson/entities/EventDayGsonModel;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v12, "meeting_time_value"

    invoke-virtual {v10}, Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;->getStartTime()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v12, "meeting_location_keys"

    invoke-virtual {v3, v12, v8}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 260
    const-string v12, "meeting_location_labels"

    invoke-virtual {v3, v12, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 261
    const-string v12, "meeting_reschedule_id"

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mRescheduleMeetingId:J

    invoke-virtual {v3, v12, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 262
    const-string v12, "meeting_type"

    move-object/from16 v0, p0

    iget v13, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mMeetingType:I

    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    const-string/jumbo v13, "visitor_profile"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v12}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->getVisitorProfile()Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_3

    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v3, v13, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v6, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 268
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->finish()V

    goto/16 :goto_0

    .line 264
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v12}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->getVisitorProfile()Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    return-object v0
.end method

.method public onTaskCompleted(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Integer;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->populateUi()V

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onTaskCompleted(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->onTaskCompleted(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public onTaskFailed(Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Exception;

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public varargs onTaskProgress([Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Integer;

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onTaskProgress([Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->onTaskProgress([Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public onTaskStarted()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public onTaskSuccess(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Integer;

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onTaskSuccess(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->onTaskSuccess(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public startPendingTask()V
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->connect(Landroid/content/Context;)V

    .line 423
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 427
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingAvailability2Activity;->populateUi()V

    .line 428
    return-void
.end method
