.class public Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;
.super Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;
.source "MessageDetailsV2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;
    }
.end annotation


# static fields
.field private static final PROGRESS_DIALOG_TAG:Ljava/lang/String; = "progress_dialog"

.field public static final TYPE_ALERT:I = 0x1

.field public static final TYPE_DIRECT:I = 0x2


# instance fields
.field private mBody:Ljava/lang/String;

.field private mBodyHtml:Ljava/lang/String;

.field private mFromVisitorId:J

.field private mFromVisitorName:Ljava/lang/String;

.field private mIsFromMe:Z

.field private mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

.field private mMeetingId:Ljava/lang/Long;

.field private mMeetingType:I

.field private mMessageAuthor:Landroid/widget/TextView;

.field private mMessageBody:Landroid/widget/TextView;

.field private mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mMessageId:J

.field private mMessageSubject:Landroid/widget/TextView;

.field private mMessageTime:Landroid/widget/TextView;

.field private mMessageType:I

.field private mSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mIsFromMe:Z

    .line 382
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$102(Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingType:I

    return p1
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;)Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    return-object v0
.end method

.method private downloadMeeting(J)V
    .locals 1
    .param p1, "meetingId"    # J

    .prologue
    .line 103
    new-instance v0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity$GetMeetingTask;-><init>(Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;J)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 104
    return-void
.end method

.method private isMeeting()Z
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIsRead(Z)Ljava/lang/Boolean;
    .locals 4
    .param p1, "b"    # Z

    .prologue
    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.eventgenie.android.REFRESH_BADGES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 322
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v1

    iget-wide v2, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageId:J

    invoke-virtual {v1, v2, v3, p1}, Lcom/genie_connect/android/db/access/Udm;->messageSetRead(JZ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private setupBottomBar()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 329
    const/4 v3, 0x0

    .line 330
    .local v3, "isSomethingVisible":Z
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->isMeeting()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 331
    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v7}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getMeetingStatus()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 333
    .local v4, "status":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v7}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->isMeetingCancelable()Z

    move-result v7

    if-nez v7, :cond_2

    .line 334
    :cond_0
    const/4 v3, 0x0

    .line 379
    .end local v4    # "status":Ljava/lang/Integer;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 380
    return-void

    .line 336
    .restart local v4    # "status":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    :cond_3
    move v1, v6

    .line 337
    .local v1, "isConfirmed":Z
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_5

    move v2, v6

    .line 338
    .local v2, "isPending":Z
    :goto_2
    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v7}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->isUserInTheApprovedList()Z

    move-result v0

    .line 340
    .local v0, "hasApproved":Z
    iget v7, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mCurrentState:I

    if-ne v7, v6, :cond_6

    .line 341
    const/4 v3, 0x1

    .line 343
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 344
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton2(Z)V

    .line 346
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    sget v7, Lcom/eventgenie/android/R$drawable;->ic_action_light_accept:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$string;->send:I

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton3(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton3(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    sget-object v6, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->THREE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    const-string/jumbo v7, "tag_send"

    invoke-virtual {v5, v6, v7}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setCustomButtonTag(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "hasApproved":Z
    .end local v1    # "isConfirmed":Z
    .end local v2    # "isPending":Z
    :cond_4
    move v1, v5

    .line 336
    goto :goto_1

    .restart local v1    # "isConfirmed":Z
    :cond_5
    move v2, v5

    .line 337
    goto :goto_2

    .line 350
    .restart local v0    # "hasApproved":Z
    .restart local v2    # "isPending":Z
    :cond_6
    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    .line 351
    :cond_7
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    sget v7, Lcom/eventgenie/android/R$drawable;->ic_action_light_edit:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$string;->meeting_action_rearange:I

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton2(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton2(Z)V

    .line 354
    const/4 v3, 0x1

    .line 357
    :cond_8
    if-nez v1, :cond_9

    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 358
    :cond_9
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    sget v7, Lcom/eventgenie/android/R$drawable;->ic_action_light_discard:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$string;->meeting_action_cancel:I

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton3(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton3(Z)V

    .line 361
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    sget-object v7, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->THREE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    const-string/jumbo v8, "tag_cancel"

    invoke-virtual {v5, v7, v8}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setCustomButtonTag(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;Ljava/lang/Object;)V

    .line 362
    const/4 v3, 0x1

    .line 365
    :cond_a
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    sget v7, Lcom/eventgenie/android/R$drawable;->ic_action_light_accept:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$string;->meeting_action_accept:I

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton1(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 370
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    sget v7, Lcom/eventgenie/android/R$drawable;->ic_action_light_cancel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$string;->meeting_action_decline:I

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton3(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton3(Z)V

    .line 373
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    sget-object v6, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->THREE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    const-string/jumbo v7, "tag_decline"

    invoke-virtual {v5, v6, v7}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setCustomButtonTag(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;Ljava/lang/Object;)V

    .line 374
    const/4 v3, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->openDetailsActivity(Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;Z)V

    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 121
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "entity_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageId:J

    .line 124
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "CURRENT_STATE"

    invoke-virtual {v6, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mCurrentState:I

    .line 125
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v6

    iget-wide v8, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v12}, Lcom/genie_connect/android/db/access/Udm;->messagesGet(Ljava/lang/Long;Ljava/lang/Integer;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 127
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v8, "fromVisitor"

    invoke-interface {v7, v8}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Luk/co/alt236/easycursor/EasyCursor;->getLong(I)J

    move-result-wide v2

    .line 130
    .local v2, "msgFrom":J
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    .line 131
    iput-boolean v11, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mIsFromMe:Z

    .line 135
    .end local v2    # "msgFrom":J
    :cond_0
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string/jumbo v7, "type"

    invoke-interface {v6, v7}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageType:I

    .line 136
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v7, "associatedMeeting"

    invoke-interface {v6, v7}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingId:Ljava/lang/Long;

    .line 139
    iget v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageType:I

    packed-switch v6, :pswitch_data_0

    .line 148
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->isMeeting()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 149
    const-string v6, "^ MESSAGE: TYPE MEETING!"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 150
    sget v6, Lcom/eventgenie/android/R$layout;->activity_message_meeting_v2:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->setContentView(I)V

    .line 151
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$string;->messages_title:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    :goto_0
    const/4 v0, 0x1

    .line 166
    .local v0, "isValid":Z
    :goto_1
    if-eqz v0, :cond_1

    .line 167
    sget v6, Lcom/eventgenie/android/R$id;->message_subject:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageSubject:Landroid/widget/TextView;

    .line 168
    sget v6, Lcom/eventgenie/android/R$id;->message_timestamp:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageTime:Landroid/widget/TextView;

    .line 169
    sget v6, Lcom/eventgenie/android/R$id;->message_body:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageBody:Landroid/widget/TextView;

    .line 170
    sget v6, Lcom/eventgenie/android/R$id;->message_author:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageAuthor:Landroid/widget/TextView;

    .line 172
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v7, "subject"

    invoke-interface {v6, v7}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mSubject:Ljava/lang/String;

    .line 173
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v7, "fromVisitor"

    invoke-interface {v6, v7}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mFromVisitorId:J

    .line 174
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v7, "author"

    invoke-interface {v6, v7}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mFromVisitorName:Ljava/lang/String;

    .line 176
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageSubject:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mSubject:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v7, "body"

    invoke-interface {v6, v7}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mBody:Ljava/lang/String;

    .line 178
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v7, "bodyHtml"

    invoke-interface {v6, v7}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mBodyHtml:Ljava/lang/String;

    .line 181
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mBodyHtml:Ljava/lang/String;

    invoke-static {v6}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 185
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageBody:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 188
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageBody:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mBodyHtml:Ljava/lang/String;

    const-string v8, "\n"

    const-string v9, "<br>"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;

    invoke-direct {v8}, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;-><init>()V

    invoke-static {v7, v12, v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageBody:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/eventgenie/android/utils/help/GCLinkMovementMethod;->getInstance(Landroid/content/Context;)Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 197
    :goto_2
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->isMeeting()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 198
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v6

    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingId:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Lcom/genie_connect/android/db/access/Udm;->meetingsGet(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 199
    .local v1, "meetingCursor":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v6, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingId:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v6, p0, v8, v9}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;-><init>(Landroid/app/Activity;J)V

    iput-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    .line 201
    invoke-static {v1}, Lcom/genie_connect/android/db/DbHelper;->has(Landroid/database/Cursor;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 202
    const-string v6, "meetingType"

    invoke-interface {v1, v6}, Luk/co/alt236/easycursor/EasyCursor;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingType:I

    .line 203
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    sget v7, Lcom/eventgenie/android/R$id;->meetingDetailsBlock:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v11}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->populateDetailsView(Landroid/view/View;Z)V

    .line 204
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v6}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getVisitorDetailsView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->setupBottomBar(Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;)V

    .line 206
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v7}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getVisitorDetailsView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->populateEntityDetailsBlock(Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;Landroid/view/View;)V

    .line 212
    :goto_3
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->close(Landroid/database/Cursor;)V

    .line 229
    .end local v1    # "meetingCursor":Luk/co/alt236/easycursor/EasyCursor;
    :goto_4
    iget-boolean v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mIsFromMe:Z

    if-eqz v6, :cond_8

    .line 230
    sget v6, Lcom/eventgenie/android/R$id;->message_author_label:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 231
    .local v5, "tv":Landroid/widget/TextView;
    sget v6, Lcom/eventgenie/android/R$string;->to_label:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 232
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageAuthor:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v8, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v9, "recipient"

    invoke-interface {v8, v9}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    .end local v5    # "tv":Landroid/widget/TextView;
    :goto_5
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->close(Landroid/database/Cursor;)V

    .line 240
    invoke-direct {p0, v11}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->setIsRead(Z)Ljava/lang/Boolean;

    .line 242
    :cond_1
    return-void

    .line 141
    .end local v0    # "isValid":Z
    :pswitch_0
    const-string v6, "^ MESSAGE: TYPE ALERT!"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 142
    sget v6, Lcom/eventgenie/android/R$layout;->activity_message_v2:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->setContentView(I)V

    .line 143
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$string;->messages_title:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 145
    const/4 v0, 0x1

    .line 146
    .restart local v0    # "isValid":Z
    goto/16 :goto_1

    .line 153
    .end local v0    # "isValid":Z
    :cond_2
    const-string v6, "^ MESSAGE: TYPE MESSAGE!"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 154
    sget v6, Lcom/eventgenie/android/R$layout;->activity_message_v2:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->setContentView(I)V

    .line 156
    iget-boolean v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mIsFromMe:Z

    if-eqz v6, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$string;->messages_title:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 193
    .restart local v0    # "isValid":Z
    :cond_4
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageBody:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mBody:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 208
    .restart local v1    # "meetingCursor":Luk/co/alt236/easycursor/EasyCursor;
    :cond_5
    const-string v6, "^ MESSAGE: MeetingId not found!"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 209
    sget v6, Lcom/eventgenie/android/R$id;->meetingDetailsBlock:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->downloadMeeting(J)V

    goto/16 :goto_3

    .line 214
    .end local v1    # "meetingCursor":Luk/co/alt236/easycursor/EasyCursor;
    :cond_6
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;->SQLITE:Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;

    iget-object v8, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string/jumbo v9, "timestamp"

    invoke-interface {v8, v9}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/SetupConfig;->getManageTimeFormat()I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->formatDateTimeWithMediumFormat(Landroid/content/Context;Lcom/genie_connect/common/utils/date/TimeFormatter$INPUT;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "time":Ljava/lang/String;
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageTime:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-wide v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mFromVisitorId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    .line 222
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v6

    sget-object v7, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->REPLY:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;

    invoke-virtual {v6, v7, v11}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V

    goto/16 :goto_4

    .line 225
    :cond_7
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    goto/16 :goto_4

    .line 236
    .end local v4    # "time":Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageAuthor:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mFromVisitorName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCustomButton1Click(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    new-instance v1, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const-string v7, "progress_dialog"

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;-><init>(Landroid/support/v4/app/FragmentActivity;IJLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCustomButton2Click(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 261
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "message_to_id"

    iget-wide v4, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mFromVisitorId:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 262
    const-string v2, "meeting_reschedule_id"

    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 264
    iget-wide v2, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mFromVisitorId:J

    iget v4, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingType:I

    invoke-static {p0, v2, v3, v4, v0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getMeetingComposeIntent(Landroid/content/Context;JILandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .line 270
    .local v1, "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 275
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCustomButton3Click(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 278
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->THREE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getCustomButtonTag(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;)Ljava/lang/Object;

    move-result-object v0

    .line 281
    .local v0, "tag":Ljava/lang/Object;
    const-string/jumbo v1, "tag_decline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    iput v3, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mCurrentState:I

    .line 283
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v1, v3}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->toggleMeetingCancelationSection(Z)V

    .line 284
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->setupBottomBar()V

    .line 299
    .end local v0    # "tag":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 285
    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "tag_cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    iput v3, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mCurrentState:I

    .line 287
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v1, v3}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->toggleMeetingCancelationSection(Z)V

    .line 288
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->setupBottomBar()V

    goto :goto_0

    .line 290
    :cond_2
    const-string/jumbo v1, "tag_send"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    new-instance v1, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getMeetingCancelationEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "progress_dialog"

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;-><init>(Landroid/support/v4/app/FragmentActivity;IJLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 297
    .end local v0    # "tag":Ljava/lang/Object;
    :cond_3
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onReplyClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "message_to_id"

    iget-wide v4, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mFromVisitorId:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 305
    const-string v2, "message_reply_to"

    iget-wide v4, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mMessageId:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 306
    const-string v2, "message_to_name"

    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mFromVisitorName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v2, "message_default_subject"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/eventgenie/android/R$string;->message_reply_prefix:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v2, "message_default_body"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n\n............................................\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/networking/v2/MessageDetailsV2Activity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 316
    return-void
.end method
