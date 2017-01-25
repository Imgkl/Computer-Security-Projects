.class public Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;
.super Ljava/lang/Object;
.source "MeetingV2DetailsHelper.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mExhibitorId:J

.field private mIsMeetingCancelable:Z

.field private mIsUserInTheApprovedList:Z

.field private mMeetingCancellationBlock:Landroid/view/View;

.field private mMeetingCancellationEditText:Landroid/widget/EditText;

.field private final mMeetingId:J

.field private mMeetingType:I

.field private final mMyId:J

.field private mStatus:I

.field private mToId:J

.field private mVisitorDetailsView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "meetingId"    # J

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mIsUserInTheApprovedList:Z

    .line 62
    iput-boolean v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mIsMeetingCancelable:Z

    .line 76
    iput-object p1, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mActivity:Landroid/app/Activity;

    .line 77
    iput-wide p2, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mMeetingId:J

    .line 78
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mMyId:J

    .line 79
    return-void
.end method

.method public static formatDate(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "timestamp"    # Ljava/lang/String;
    .param p1, "sqlite"    # Z

    .prologue
    .line 275
    if-eqz p1, :cond_0

    .line 276
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateFullFormat:Ljava/text/DateFormat;

    invoke-static {v0, p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromSqlite(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateFullFormat:Ljava/text/DateFormat;

    invoke-static {v0, p0}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromJson(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static formatTime(Landroid/content/Context;Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;

    .prologue
    .line 298
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/SetupConfig;->getManageTimeFormat()I

    move-result v0

    .line 301
    .local v0, "manageTimeFormat":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;->getStartTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->getTimeFromJsonDate(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/objects/TimeSlotGsonModel;->getEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->getTimeFromJsonDate(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "endTime"    # Ljava/lang/String;
    .param p3, "sqlite"    # Z

    .prologue
    .line 284
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/SetupConfig;->getManageTimeFormat()I

    move-result v0

    .line 286
    .local v0, "manageTimeFormat":I
    if-eqz p3, :cond_0

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->getTimeFromSqliteDate(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p2, v0}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->getTimeFromSqliteDate(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->getTimeFromJsonDate(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p2, v0}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->getTimeFromJsonDate(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setupMeetingStatus(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 246
    iget v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mStatus:I

    if-nez v0, :cond_0

    .line 247
    sget v0, Lcom/eventgenie/android/R$id;->meeting_status_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    sget v0, Lcom/eventgenie/android/R$id;->meeting_status_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/eventgenie/android/R$drawable;->meeting_query_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    sget v0, Lcom/eventgenie/android/R$id;->meeting_status_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->meeting_this_meeting_is_awaiting_confirmation:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 263
    :goto_0
    return-void

    .line 251
    :cond_0
    iget v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 252
    :cond_1
    sget v0, Lcom/eventgenie/android/R$id;->meeting_status_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    sget v0, Lcom/eventgenie/android/R$id;->meeting_status_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/eventgenie/android/R$drawable;->meeting_ticked_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    sget v0, Lcom/eventgenie/android/R$id;->meeting_status_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->meeting_this_meeting_is_confirmed:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 256
    :cond_2
    iget v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 257
    :cond_3
    sget v0, Lcom/eventgenie/android/R$id;->meeting_status_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    sget v0, Lcom/eventgenie/android/R$id;->meeting_status_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->meeting_this_meeting_has_been_cancelled:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 261
    :cond_4
    sget v0, Lcom/eventgenie/android/R$id;->section_meeting_status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getMeetingCancelationEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mMeetingCancellationEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMeetingStatus()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mStatus:I

    return v0
.end method

.method public getMeetingType()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mMeetingType:I

    return v0
.end method

.method public getToExhibitorId()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mExhibitorId:J

    return-wide v0
.end method

.method public getToVisitorId()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mToId:J

    return-wide v0
.end method

.method public getVisitorDetailsView()Landroid/view/View;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mVisitorDetailsView:Landroid/view/View;

    return-object v0
.end method

.method public isMeetingCancelable()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mIsMeetingCancelable:Z

    return v0
.end method

.method public isUserInTheApprovedList()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mIsUserInTheApprovedList:Z

    return v0
.end method

.method public populateDetailsView(Landroid/view/View;Z)V
    .locals 32
    .param p1, "view"    # Landroid/view/View;
    .param p2, "populateVisitorNames"    # Z

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    const-string v27, "^ MEETINGV2HELPER: The view is invalid!"

    invoke-static/range {v27 .. v27}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 242
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "^ MEETINGV2HELPER: Got meeting ="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mMeetingId:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 122
    sget v27, Lcom/eventgenie/android/R$id;->meetingTitle:I

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 123
    .local v17, "meetingTitle":Landroid/widget/TextView;
    sget v27, Lcom/eventgenie/android/R$id;->meetingDetails:I

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 124
    .local v13, "meetingDetails":Landroid/widget/TextView;
    sget v27, Lcom/eventgenie/android/R$id;->meetingLocation:I

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 125
    .local v14, "meetingLocation":Landroid/widget/TextView;
    sget v27, Lcom/eventgenie/android/R$id;->time:I

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 126
    .local v16, "meetingTime":Landroid/widget/TextView;
    sget v27, Lcom/eventgenie/android/R$id;->date:I

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 128
    .local v12, "meetingDate":Landroid/widget/TextView;
    sget v27, Lcom/eventgenie/android/R$id;->section_cancel_meeting:I

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mMeetingCancellationBlock:Landroid/view/View;

    .line 129
    sget v27, Lcom/eventgenie/android/R$id;->meeting_cancelation_reason:I

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/EditText;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mMeetingCancellationEditText:Landroid/widget/EditText;

    .line 131
    sget v27, Lcom/eventgenie/android/R$id;->visitorProfileBlock:I

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mVisitorDetailsView:Landroid/view/View;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mVisitorDetailsView:Landroid/view/View;

    move-object/from16 v27, v0

    sget v28, Lcom/eventgenie/android/R$id;->name:I

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 133
    .local v19, "personName":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mVisitorDetailsView:Landroid/view/View;

    move-object/from16 v27, v0

    sget v28, Lcom/eventgenie/android/R$id;->favourite_star:I

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v5

    .line 136
    .local v5, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-virtual {v5}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mMeetingId:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/genie_connect/android/db/access/Udm;->meetingsGet(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v11

    .line 138
    .local v11, "meetingCursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v11}, Lcom/genie_connect/android/db/DbHelper;->has(Landroid/database/Cursor;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 139
    sget v27, Lcom/eventgenie/android/R$id;->header_meeting_with:I

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    sget v28, Lcom/eventgenie/android/R$string;->header_meeting_with:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 142
    sget v27, Lcom/eventgenie/android/R$id;->header_meeting_date_and_time:I

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    sget v28, Lcom/eventgenie/android/R$string;->header_meeting_date_and_time:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 145
    sget v27, Lcom/eventgenie/android/R$id;->header_meeting_location:I

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    sget v28, Lcom/eventgenie/android/R$string;->header_meeting_location:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 148
    sget v27, Lcom/eventgenie/android/R$id;->header_meeting_notes:I

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    sget v28, Lcom/eventgenie/android/R$string;->header_meeting_notes:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 151
    sget v27, Lcom/eventgenie/android/R$id;->header_meeting_cancelation:I

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    sget v28, Lcom/eventgenie/android/R$string;->header_meeting_cancelation:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v29, v0

    invoke-static/range {v27 .. v29}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 155
    const-string v27, "name"

    move-object/from16 v0, v27

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 156
    .local v15, "meetingName":Ljava/lang/String;
    const-string v27, "isDeletable"

    move-object/from16 v0, v27

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 158
    .local v6, "deletable":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const-string v27, "fullDescription"

    move-object/from16 v0, v27

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const-string v27, "location"

    move-object/from16 v0, v27

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const-string v27, "status"

    move-object/from16 v0, v27

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mStatus:I

    .line 163
    const-string v27, "meetingType"

    move-object/from16 v0, v27

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mMeetingType:I

    .line 164
    const-string v27, "exhibitor"

    move-object/from16 v0, v27

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mExhibitorId:J

    .line 166
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v6, v0, :cond_1

    const/16 v27, 0x1

    :goto_1
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mIsMeetingCancelable:Z

    .line 168
    const-string v27, "runningTime_from"

    move-object/from16 v0, v27

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {v27 .. v28}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->formatDate(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v27, v0

    const-string v28, "runningTime_from"

    move-object/from16 v0, v28

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "runningTime_to"

    move-object/from16 v0, v29

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x1

    invoke-static/range {v27 .. v30}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->formatTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "^ MEETING: Displaying meeting: Name: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", Id: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mMeetingId:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", Status: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mStatus:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", Type: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mMeetingType:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", ExhibitorId: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mExhibitorId:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 177
    invoke-direct/range {p0 .. p1}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->setupMeetingStatus(Landroid/view/View;)V

    .line 179
    const/4 v7, 0x1

    .line 181
    .local v7, "hasData":Z
    const-string v22, ""

    .line 187
    .local v22, "tmpName":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v4, "approvedVisitors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v26, "visitorNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v23, "visitorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_2
    if-eqz v7, :cond_2

    .line 192
    const-string v27, "approvedVisitors"

    move-object/from16 v0, v27

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 193
    .local v20, "tmpApprovedVisitor":J
    const-string/jumbo v27, "visitorNames"

    move-object/from16 v0, v27

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 194
    const-string/jumbo v27, "visitors"

    move-object/from16 v0, v27

    invoke-interface {v11, v0}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 196
    .local v24, "tmpVisitorId":J
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-interface {v11}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v7

    goto :goto_2

    .line 166
    .end local v4    # "approvedVisitors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v7    # "hasData":Z
    .end local v20    # "tmpApprovedVisitor":J
    .end local v22    # "tmpName":Ljava/lang/String;
    .end local v23    # "visitorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v24    # "tmpVisitorId":J
    .end local v26    # "visitorNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 203
    .restart local v4    # "approvedVisitors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v7    # "hasData":Z
    .restart local v22    # "tmpName":Ljava/lang/String;
    .restart local v23    # "visitorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v26    # "visitorNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v10, -0x1

    .line 204
    .local v10, "index":I
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 205
    .local v9, "id":Ljava/lang/Long;
    add-int/lit8 v10, v10, 0x1

    .line 206
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mMyId:J

    move-wide/from16 v30, v0

    cmp-long v27, v28, v30

    if-eqz v27, :cond_3

    .line 207
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mToId:J

    .line 212
    .end local v9    # "id":Ljava/lang/Long;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 213
    .restart local v9    # "id":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mMyId:J

    move-wide/from16 v30, v0

    cmp-long v27, v28, v30

    if-nez v27, :cond_5

    .line 214
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mIsUserInTheApprovedList:Z

    .line 219
    .end local v9    # "id":Ljava/lang/Long;
    :cond_6
    if-eqz p2, :cond_8

    .line 220
    const-string v18, ""

    .line 222
    .local v18, "names":Ljava/lang/String;
    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v10, v0, :cond_7

    .line 223
    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "names":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 227
    .restart local v18    # "names":Ljava/lang/String;
    :cond_7
    if-nez v18, :cond_9

    .line 228
    const-string v18, ""

    .line 233
    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    .end local v18    # "names":Ljava/lang/String;
    :cond_8
    invoke-static {v11}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 230
    .restart local v18    # "names":Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    goto :goto_3

    .line 238
    .end local v4    # "approvedVisitors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v6    # "deletable":I
    .end local v7    # "hasData":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "index":I
    .end local v15    # "meetingName":Ljava/lang/String;
    .end local v18    # "names":Ljava/lang/String;
    .end local v22    # "tmpName":Ljava/lang/String;
    .end local v23    # "visitorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v26    # "visitorNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "^ MEETINGV2HELPER: Could not retrieve meeting with id="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mMeetingId:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 239
    const/16 v27, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public toggleMeetingCancelationSection(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 266
    if-eqz p1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mMeetingCancellationBlock:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->mMeetingCancellationBlock:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
