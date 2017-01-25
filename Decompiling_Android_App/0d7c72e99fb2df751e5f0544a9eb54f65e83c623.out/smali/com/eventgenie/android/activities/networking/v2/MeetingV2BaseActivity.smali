.class public abstract Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "MeetingV2BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;,
        Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;
    }
.end annotation


# static fields
.field protected static final BUTTON_TAG_CANCEL:Ljava/lang/String; = "tag_cancel"

.field protected static final BUTTON_TAG_DECLINE:Ljava/lang/String; = "tag_decline"

.field protected static final BUTTON_TAG_SEND:Ljava/lang/String; = "tag_send"

.field protected static final STATE_CANCELLING:I = 0x1

.field protected static final STATE_VIEWING:I


# instance fields
.field protected mCurrentState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 282
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method protected openDetailsActivity(Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;Z)V
    .locals 6
    .param p1, "helper"    # Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;
    .param p2, "interactable"    # Z

    .prologue
    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getMeetingType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 113
    const/4 v1, 0x0

    .line 116
    .local v1, "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 117
    .end local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_1
    return-void

    .line 98
    :pswitch_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_1

    .line 103
    :cond_0
    if-nez p2, :cond_1

    .line 104
    const-string v2, "disable_interaction"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    :cond_1
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getToVisitorId()J

    move-result-wide v4

    invoke-static {p0, v2, v4, v5, v0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .line 108
    .restart local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0

    .line 110
    .end local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :pswitch_1
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getToExhibitorId()J

    move-result-wide v4

    invoke-static {p0, v2, v4, v5, v0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .line 111
    .restart local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected openVisitorDetailsActivity(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "profile"    # Lorg/json/JSONObject;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    if-nez p1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 125
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "disable_interaction"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    const-string/jumbo v2, "visitor_json"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-wide/16 v4, -0x1

    invoke-static {p0, v2, v4, v5, v0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .line 131
    .local v1, "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 133
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_1
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected populateEntityDetailsBlock(Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;Landroid/view/View;)V
    .locals 8
    .param p1, "helper"    # Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getMeetingType()I

    move-result v0

    if-nez v0, :cond_1

    .line 139
    new-instance v0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;

    const-string/jumbo v3, "visitors"

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getToVisitorId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    move-object v1, p0

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;-><init>(Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;Landroid/content/Context;Ljava/lang/String;JLcom/genie_connect/android/db/config/AppConfig;Landroid/view/View;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getMeetingType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 141
    new-instance v0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;

    const-string v3, "exhibitors"

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getToExhibitorId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    move-object v1, p0

    move-object v2, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;-><init>(Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;Landroid/content/Context;Ljava/lang/String;JLcom/genie_connect/android/db/config/AppConfig;Landroid/view/View;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected populateExhibitorDetailsBlock(JLandroid/view/View;)V
    .locals 9
    .param p1, "id"    # J
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 146
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 147
    new-instance v0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;

    const-string v3, "exhibitors"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    move-object v1, p0

    move-object v2, p0

    move-wide v4, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$PopulateDetailsBlockTask;-><init>(Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;Landroid/content/Context;Ljava/lang/String;JLcom/genie_connect/android/db/config/AppConfig;Landroid/view/View;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 149
    :cond_0
    return-void
.end method

.method protected populateVisitorDetailsBlock(Lorg/json/JSONObject;Landroid/view/View;)V
    .locals 1
    .param p1, "profile"    # Lorg/json/JSONObject;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 152
    new-instance v0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;

    invoke-direct {v0, p2}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->populateVisitor(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 153
    return-void
.end method

.method protected setupBottomBar(Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;)V
    .locals 9
    .param p1, "helper"    # Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 160
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getMeetingStatus()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 161
    .local v4, "status":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 163
    .local v3, "isSomethingVisible":Z
    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->isMeetingCancelable()Z

    move-result v7

    if-nez v7, :cond_2

    .line 164
    :cond_0
    const/4 v3, 0x0

    .line 211
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MEETING: Settting bottombar visibility to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->getMeetingStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 213
    return-void

    .line 167
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

    .line 168
    .local v1, "isConfirmed":Z
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_5

    move v2, v6

    .line 169
    .local v2, "isPending":Z
    :goto_2
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/help/MeetingV2DetailsHelper;->isUserInTheApprovedList()Z

    move-result v0

    .line 171
    .local v0, "hasApproved":Z
    iget v7, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->mCurrentState:I

    if-ne v7, v6, :cond_6

    .line 172
    const/4 v3, 0x1

    .line 174
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 175
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton2(Z)V

    .line 177
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    sget v7, Lcom/eventgenie/android/R$drawable;->ic_action_light_accept:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$string;->send:I

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton3(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton3(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

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

    .line 167
    goto :goto_1

    .restart local v1    # "isConfirmed":Z
    :cond_5
    move v2, v5

    .line 168
    goto :goto_2

    .line 183
    .restart local v0    # "hasApproved":Z
    .restart local v2    # "isPending":Z
    :cond_6
    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    .line 184
    :cond_7
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    sget v7, Lcom/eventgenie/android/R$drawable;->ic_action_light_edit:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$string;->meeting_action_rearange:I

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton2(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton2(Z)V

    .line 187
    const/4 v3, 0x1

    .line 190
    :cond_8
    if-nez v1, :cond_9

    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 191
    :cond_9
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    sget v7, Lcom/eventgenie/android/R$drawable;->ic_action_light_discard:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$string;->meeting_action_cancel:I

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton3(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton3(Z)V

    .line 194
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    sget-object v7, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->THREE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    const-string/jumbo v8, "tag_cancel"

    invoke-virtual {v5, v7, v8}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setCustomButtonTag(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;Ljava/lang/Object;)V

    .line 195
    const/4 v3, 0x1

    .line 198
    :cond_a
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    sget v7, Lcom/eventgenie/android/R$drawable;->ic_action_light_accept:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$string;->meeting_action_accept:I

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton1(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 203
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    sget v7, Lcom/eventgenie/android/R$drawable;->ic_action_light_cancel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$string;->meeting_action_decline:I

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton3(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton3(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v5

    sget-object v6, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;->THREE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;

    const-string/jumbo v7, "tag_decline"

    invoke-virtual {v5, v6, v7}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setCustomButtonTag(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$CUSTOM_BUTTON;Ljava/lang/Object;)V

    .line 207
    const/4 v3, 0x1

    goto/16 :goto_0
.end method
