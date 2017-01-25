.class public Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;
.super Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;
.source "MeetingDetailsV2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PROGRESS_DIALOG_TAG:Ljava/lang/String; = "progress_dialog"


# instance fields
.field private mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

.field private mMeetingId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->openDetailsActivity(Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;Z)V

    .line 53
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v2, Lcom/eventgenie/android/R$layout;->activity_meeting_details_v2:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->meeting_title:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "entity_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingId:J

    .line 64
    const-string v2, "CURRENT_STATE"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mCurrentState:I

    .line 66
    new-instance v2, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    iget-wide v4, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingId:J

    invoke-direct {v2, p0, v4, v5}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;-><init>(Landroid/app/Activity;J)V

    iput-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    .line 67
    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    sget v3, Lcom/eventgenie/android/R$id;->meetingDetailsBlock:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->populateDetailsView(Landroid/view/View;Z)V

    .line 69
    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getVisitorDetailsView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 73
    .local v1, "restored":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 74
    const-string v2, "CURRENT_STATE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mCurrentState:I

    .line 75
    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getMeetingCancelationEditText()Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "CANCELATION_MESSAGE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->setupBottomBar(Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;)V

    .line 79
    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v3}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getVisitorDetailsView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->populateEntityDetailsBlock(Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;Landroid/view/View;)V

    .line 80
    return-void
.end method

.method public onCustomButton1Click(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v1, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingId:J

    const/4 v6, 0x0

    const-string v7, "progress_dialog"

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;-><init>(Landroid/support/v4/app/FragmentActivity;IJLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCustomButton2Click(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "message_to_id"

    iget-object v5, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v5}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getToVisitorId()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 102
    const-string v4, "meeting_reschedule_id"

    iget-wide v6, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingId:J

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 105
    iget-object v4, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v4}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getMeetingType()I

    move-result v1

    .line 107
    .local v1, "meetingType":I
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v4}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getToExhibitorId()J

    move-result-wide v2

    .line 115
    .local v2, "toId":J
    :goto_0
    invoke-static {p0, v2, v3, v1, v0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getMeetingComposeIntent(Landroid/content/Context;JILandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 124
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "meetingType":I
    .end local v2    # "toId":J
    :goto_1
    return-void

    .line 109
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v1    # "meetingType":I
    :cond_0
    if-nez v1, :cond_1

    .line 110
    iget-object v4, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v4}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getToVisitorId()J

    move-result-wide v2

    .restart local v2    # "toId":J
    goto :goto_0

    .line 112
    .end local v2    # "toId":J
    :cond_1
    const-wide/16 v2, 0x0

    .restart local v2    # "toId":J
    goto :goto_0

    .line 122
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "meetingType":I
    .end local v2    # "toId":J
    :cond_2
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public onCustomButton3Click(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 127
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->THREE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->getCustomButtonTag(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    .local v0, "tag":Ljava/lang/Object;
    const-string/jumbo v1, "tag_decline"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    iput v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mCurrentState:I

    .line 132
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v1, v3}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->toggleMeetingCancelationSection(Z)V

    .line 133
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->setupBottomBar(Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;)V

    .line 150
    .end local v0    # "tag":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 135
    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "tag_cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    iput v3, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mCurrentState:I

    .line 137
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v1, v3}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->toggleMeetingCancelationSection(Z)V

    .line 138
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->setupBottomBar(Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;)V

    goto :goto_0

    .line 141
    :cond_2
    const-string/jumbo v1, "tag_send"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    new-instance v1, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;

    iget-wide v4, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingId:J

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

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

    .line 148
    .end local v0    # "tag":Ljava/lang/Object;
    :cond_3
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "CURRENT_STATE"

    iget v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mCurrentState:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    const-string v1, "CANCELATION_MESSAGE"

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingDetailsV2Activity;->mMeetingHelper:Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getMeetingCancelationEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-object v0
.end method
