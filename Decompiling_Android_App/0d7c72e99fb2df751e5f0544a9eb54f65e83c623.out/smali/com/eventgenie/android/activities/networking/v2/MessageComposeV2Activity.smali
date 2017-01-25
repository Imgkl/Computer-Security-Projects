.class public Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;
.super Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;
.source "MessageComposeV2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/github/ignition/core/tasks/IgnitedAsyncTaskContextHandler",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final MESSAGE_DEFAULT_BODY_EXTRA:Ljava/lang/String; = "message_default_body"

.field public static final MESSAGE_DEFAULT_SUBJECT_EXTRA:Ljava/lang/String; = "message_default_subject"

.field public static final MESSAGE_REPLY_TO_EXTRA:Ljava/lang/String; = "message_reply_to"

.field public static final MESSAGE_TO_COMPANY_EXTRA:Ljava/lang/String; = "message_to_company"

.field public static final MESSAGE_TO_ID_EXTRA:Ljava/lang/String; = "message_to_id"

.field public static final MESSAGE_TO_NAME_EXTRA:Ljava/lang/String; = "message_to_name"

.field public static final MESSAGE_TO_PHOTO_EXTRA:Ljava/lang/String; = "message_to_photo"


# instance fields
.field private body:Landroid/widget/EditText;

.field private mContentFlipper:Landroid/widget/ViewFlipper;

.field private mIsReply:Z

.field private mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

.field private mReplyToId:J

.field private mToId:J

.field private subject:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mIsReply:Z

    return-void
.end method

.method private displayContentPage(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mContentFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mContentFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 76
    :cond_0
    return-void
.end method

.method private populateUi()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 229
    iget-object v5, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->isDone()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 230
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v5

    invoke-virtual {v5, v4, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    .line 232
    iget-object v5, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->getMessageCreditsObject()Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;

    move-result-object v2

    .line 233
    .local v2, "messageCreditsData":Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;->getTotalCreditAvailable()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 234
    .local v1, "isCreditResultValid":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ MESSAGE2: MessageCreditsResponseData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 236
    if-eqz v1, :cond_2

    .line 238
    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;->getTotalCreditAvailable()Ljava/lang/Integer;

    move-result-object v0

    .line 239
    .local v0, "creditAmount":Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ MESSAGE2: MeetingCredits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 241
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->getVisitorProfile()Lorg/json/JSONObject;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$id;->visitorProfileBlock:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->populateVisitorDetailsBlock(Lorg/json/JSONObject;Landroid/view/View;)V

    .line 243
    sget v4, Lcom/eventgenie/android/R$id;->visitorProfileBlock:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    sget v4, Lcom/eventgenie/android/R$id;->section_divider:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v5

    invoke-interface {v5}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->getDetailsTitleColour()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 245
    sget v4, Lcom/eventgenie/android/R$id;->message_credits_label:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;->getNumberOfCreditsAvailableText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const/4 v3, 0x1

    .line 247
    .local v3, "pageTodisplay":I
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->showSendMessageButton()V

    .line 270
    .end local v0    # "creditAmount":Ljava/lang/Integer;
    .end local v1    # "isCreditResultValid":Z
    .end local v2    # "messageCreditsData":Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;
    :goto_1
    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->displayContentPage(I)V

    .line 271
    return-void

    .end local v3    # "pageTodisplay":I
    .restart local v2    # "messageCreditsData":Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;
    :cond_0
    move v1, v4

    .line 233
    goto :goto_0

    .line 250
    .restart local v0    # "creditAmount":Ljava/lang/Integer;
    .restart local v1    # "isCreditResultValid":Z
    :cond_1
    sget v4, Lcom/eventgenie/android/R$id;->progress:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 251
    sget v4, Lcom/eventgenie/android/R$id;->topText:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 252
    sget v4, Lcom/eventgenie/android/R$id;->bottomText:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Label;->NOT_ENOUGH_MESSAGE_CREDITS:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    const/4 v3, 0x0

    .restart local v3    # "pageTodisplay":I
    goto :goto_1

    .line 257
    .end local v0    # "creditAmount":Ljava/lang/Integer;
    .end local v3    # "pageTodisplay":I
    :cond_2
    const-string v4, "^ MESSAGE2: Availability result is invalid..."

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 258
    sget v4, Lcom/eventgenie/android/R$string;->meetings_v2_generic_error:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v4, v5}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 263
    const/4 v3, 0x0

    .line 264
    .restart local v3    # "pageTodisplay":I
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->finish()V

    goto :goto_1

    .line 267
    .end local v1    # "isCreditResultValid":Z
    .end local v2    # "messageCreditsData":Lcom/genie_connect/android/net/container/gson/rpc/MessageCreditsRpcModel$MessageCreditsResponseData;
    .end local v3    # "pageTodisplay":I
    :cond_3
    const/4 v3, 0x0

    .line 268
    .restart local v3    # "pageTodisplay":I
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    goto :goto_1
.end method

.method private showSendMessageButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 274
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 275
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_light_accept:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->send:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton1(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_light_discard:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->discard:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton2(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 279
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton2(Z)V

    .line 280
    return-void
.end method

.method private static validate(Landroid/widget/EditText;)Z
    .locals 2
    .param p0, "field"    # Landroid/widget/EditText;

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 296
    :cond_0
    const/4 v1, 0x0

    .line 298
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->getVisitorProfile()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->openVisitorDetailsActivity(Lorg/json/JSONObject;)V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNetworkRequired(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->finish()V

    .line 93
    :cond_0
    sget v0, Lcom/eventgenie/android/R$layout;->activity_message_compose_v2:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->message_new:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    sget v0, Lcom/eventgenie/android/R$id;->contentFlipper:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mContentFlipper:Landroid/widget/ViewFlipper;

    .line 97
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 98
    .local v6, "b":Landroid/os/Bundle;
    if-eqz v6, :cond_5

    .line 99
    sget v0, Lcom/eventgenie/android/R$id;->header_sending_to:I

    sget v1, Lcom/eventgenie/android/R$string;->to_label:I

    invoke-static {v0, v1, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(IILandroid/app/Activity;)V

    .line 100
    const-string v0, "message_to_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mToId:J

    .line 102
    const-string v0, "message_reply_to"

    const-wide/16 v2, -0x1

    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mReplyToId:J

    .line 103
    iget-wide v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mReplyToId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mIsReply:Z

    .line 107
    :cond_1
    const-string v0, "message_default_subject"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "defaultSubject":Ljava/lang/String;
    sget v0, Lcom/eventgenie/android/R$id;->edit_subject:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->subject:Landroid/widget/EditText;

    .line 109
    if-eqz v8, :cond_2

    .line 110
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->subject:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_2
    const-string v0, "message_default_body"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 114
    .local v7, "defaultBody":Ljava/lang/String;
    sget v0, Lcom/eventgenie/android/R$id;->edit_body:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->body:Landroid/widget/EditText;

    .line 115
    if-eqz v7, :cond_3

    .line 116
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->body:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_3
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    .line 126
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    if-nez v0, :cond_4

    .line 127
    new-instance v0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    iget-wide v2, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mToId:J

    sget-object v4, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;->MODE_SEND_MESSAGE:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;

    const/4 v5, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;-><init>(Landroid/content/Context;JLcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask$TaskMode;I)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    .line 133
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->startPendingTask()V

    .line 138
    .end local v7    # "defaultBody":Ljava/lang/String;
    .end local v8    # "defaultSubject":Ljava/lang/String;
    :goto_0
    return-void

    .line 135
    :cond_5
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->finish()V

    goto :goto_0
.end method

.method public onCustomButton1Click(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->subject:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->validate(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->body:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->validate(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    new-instance v0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;

    iget-wide v2, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mToId:J

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->subject:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->body:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v1, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mIsReply:Z

    if-eqz v1, :cond_0

    iget-wide v6, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mReplyToId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    :goto_0
    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;-><init>(Landroid/support/v4/app/FragmentActivity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 156
    :goto_1
    return-void

    .line 143
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_1

    .line 153
    :cond_2
    sget v0, Lcom/eventgenie/android/R$string;->message_invalid:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCustomButton2Click(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->subject:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->validate(Landroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->body:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->validate(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_launcher:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->message_discard_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->message_discard_msg:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->alert_dialog_no:I

    new-instance v2, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity$2;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity$2;-><init>(Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->alert_dialog_yes:I

    new-instance v2, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity$1;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity$1;-><init>(Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 192
    :goto_0
    return-void

    .line 187
    :cond_1
    sget v0, Lcom/eventgenie/android/R$string;->message_discarded:I

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;I)V

    .line 190
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->finish()V

    goto :goto_0
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    return-object v0
.end method

.method public onTaskCompleted(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Integer;

    .prologue
    .line 201
    const-string v0, "^ MEETINGS2: Task completed"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->populateUi()V

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onTaskCompleted(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->onTaskCompleted(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public onTaskFailed(Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Exception;

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public varargs onTaskProgress([Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Integer;

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onTaskProgress([Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->onTaskProgress([Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public onTaskStarted()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public onTaskSuccess(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Integer;

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onTaskSuccess(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->onTaskSuccess(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public startPendingTask()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->connect(Landroid/content/Context;)V

    .line 285
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->mPrepTask:Lcom/eventgenie/android/utils/asynctasks/MeetingsV2PrepTask;

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 289
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/networking/v2/MessageComposeV2Activity;->populateUi()V

    .line 290
    return-void
.end method
