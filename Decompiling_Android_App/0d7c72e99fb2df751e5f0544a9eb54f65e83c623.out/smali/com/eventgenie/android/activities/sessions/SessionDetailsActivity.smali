.class public Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;
.super Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;
.source "SessionDetailsActivity.java"

# interfaces
.implements Lcom/eventgenie/android/fragments/base/FragmentDataProvider;


# static fields
.field public static final ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ANALYTICS_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ASSETS_FOLDER:Ljava/lang/String; = "sessions/"

.field public static final ENTITY_KIND:Ljava/lang/String; = "sessions"

.field public static final ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;


# instance fields
.field private mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

.field private mFeedbackManager:Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

.field private mFragmentFactory:Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mIsWaitlisted:Z

.field private mLeadChairId:J

.field private mScheduleConfig:Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

.field private mSession:Lcom/genie_connect/common/db/model/Session;

.field private mTvName:Landroid/widget/TextView;

.field private mTvday:Landroid/widget/TextView;

.field private mTvend:Landroid/widget/TextView;

.field private mTvstart:Landroid/widget/TextView;

.field private mViewConfig:Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mWaitlistLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 88
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->SCHEDULE:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 89
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_AGENDA:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->ENTITY_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 90
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->SCHEDULE:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 91
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_AGENDA:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->ANALYTICS_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;-><init>()V

    .line 122
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mLeadChairId:J

    return-void
.end method

.method static synthetic access$001(Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

    .prologue
    .line 82
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onBookmarkClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mLeadChairId:J

    return-wide v0
.end method

.method private createSpeakerLoader(Lcom/genie_connect/common/db/model/Speaker$SpeakerType;)Landroid/support/v4/content/Loader;
    .locals 1
    .param p1, "speakerType"    # Lcom/genie_connect/common/db/model/Speaker$SpeakerType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/common/db/model/Speaker$SpeakerType;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 482
    new-instance v0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$5;

    invoke-direct {v0, p0, p0, p1}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$5;-><init>(Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;Landroid/content/Context;Lcom/genie_connect/common/db/model/Speaker$SpeakerType;)V

    return-object v0
.end method

.method private populateUI()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 371
    sget v0, Lcom/eventgenie/android/R$id;->header_session:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->setHeader(Landroid/view/ViewGroup;)V

    .line 372
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 374
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->session_name:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mTvName:Landroid/widget/TextView;

    .line 375
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->day:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mTvday:Landroid/widget/TextView;

    .line 376
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->start:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mTvstart:Landroid/widget/TextView;

    .line 377
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->end:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mTvend:Landroid/widget/TextView;

    .line 378
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$id;->waitlist_label:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mWaitlistLabel:Landroid/widget/TextView;

    .line 380
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mSession:Lcom/genie_connect/common/db/model/Session;

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Session;->shareUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->setShareUrl(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mSession:Lcom/genie_connect/common/db/model/Session;

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Session;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->setEntityName(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mTvName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mIsWaitlisted:Z

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mWaitlistLabel:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/ui/help/UIUtils;->setWaitlistLabel(Landroid/content/Context;ZLandroid/widget/TextView;)V

    .line 390
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mTvstart:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mSession:Lcom/genie_connect/common/db/model/Session;

    iget-object v2, v2, Lcom/genie_connect/common/db/model/Session;->runningTime_from:Ljava/util/Date;

    invoke-static {}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getDataTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/SetupConfig;->getManageTimeFormat()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->doFormatTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/TimeZone;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mTvend:Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->schedule_end_formatter:I

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mSession:Lcom/genie_connect/common/db/model/Session;

    iget-object v4, v4, Lcom/genie_connect/common/db/model/Session;->runningTime_to:Ljava/util/Date;

    invoke-static {}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getDataTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/SetupConfig;->getManageTimeFormat()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->doFormatTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/TimeZone;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ^ Event Session locale:   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mViewConfig:Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;

    invoke-virtual {v1}, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mSession:Lcom/genie_connect/common/db/model/Session;

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Session;->runningTime_from:Ljava/util/Date;

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mViewConfig:Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;

    invoke-virtual {v1}, Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->formatDayByRegionLocale(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 407
    .local v7, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mTvday:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    new-instance v0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mFeedbackManager:Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

    .line 416
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mFeedbackManager:Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->isFeedbackAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->FEEDBACK:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;

    invoke-virtual {v0, v1, v9}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V

    .line 420
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mScheduleConfig:Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->enableSharing()Z

    move-result v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mSession:Lcom/genie_connect/common/db/model/Session;

    invoke-virtual {p0, v0, v1, v2}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/AppConfig;ZLcom/genie_connect/common/db/entityfactory/EGEntity;)V

    .line 421
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->setupTabs()V

    .line 422
    return-void
.end method

.method private updateFavouriteBookmarkIcons()V
    .locals 3

    .prologue
    .line 199
    sget v2, Lcom/eventgenie/android/R$id;->btn_title_favourite:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 200
    .local v1, "notBookmarkedNorFavourite":Landroid/widget/ImageButton;
    sget v2, Lcom/eventgenie/android/R$drawable;->ic_action_add_to_agenda:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 201
    sget v2, Lcom/eventgenie/android/R$id;->btn_title_unfavourite:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 202
    .local v0, "favouriteOrBookmarked":Landroid/widget/ImageButton;
    sget v2, Lcom/eventgenie/android/R$drawable;->ic_action_blue_agenda:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 203
    return-void
.end method


# virtual methods
.method protected doReloadAfterSurveysSynced()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->populateUI()V

    .line 142
    return-void
.end method

.method protected getAgendaItemEndTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mSession:Lcom/genie_connect/common/db/model/Session;

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Session;->runningTime_to:Ljava/util/Date;

    return-object v0
.end method

.method protected getAgendaItemStartTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mSession:Lcom/genie_connect/common/db/model/Session;

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Session;->runningTime_from:Ljava/util/Date;

    return-object v0
.end method

.method public getData(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 1
    .param p2, "identifier"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/genie_connect/common/db/model/Session;

    if-ne p1, v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mSession:Lcom/genie_connect/common/db/model/Session;

    .line 478
    :goto_0
    return-object v0

    .line 442
    :cond_0
    const-class v0, Landroid/support/v4/content/Loader;

    if-ne p1, v0, :cond_1

    .line 443
    packed-switch p2, :pswitch_data_0

    .line 478
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 445
    :pswitch_0
    sget-object v0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->KEY_SPEAKER:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->createSpeakerLoader(Lcom/genie_connect/common/db/model/Speaker$SpeakerType;)Landroid/support/v4/content/Loader;

    move-result-object v0

    goto :goto_0

    .line 447
    :pswitch_1
    sget-object v0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->CO_CHAIR:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->createSpeakerLoader(Lcom/genie_connect/common/db/model/Speaker$SpeakerType;)Landroid/support/v4/content/Loader;

    move-result-object v0

    goto :goto_0

    .line 449
    :pswitch_2
    sget-object v0, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->SPEAKER:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->createSpeakerLoader(Lcom/genie_connect/common/db/model/Speaker$SpeakerType;)Landroid/support/v4/content/Loader;

    move-result-object v0

    goto :goto_0

    .line 451
    :pswitch_3
    new-instance v0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$3;-><init>(Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;Landroid/content/Context;)V

    goto :goto_0

    .line 458
    :pswitch_4
    new-instance v0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$4;-><init>(Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;Landroid/content/Context;)V

    goto :goto_0

    .line 443
    nop

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public getEntityKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "sessions"

    return-object v0
.end method

.method public getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method protected isBookmarkActionAvailable()Z
    .locals 5

    .prologue
    .line 237
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v1

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_FAVOURITE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    invoke-virtual {v1, v2, v3, v4}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v0

    .line 243
    .local v0, "isAllowed":Z
    if-nez v0, :cond_0

    .line 245
    const/4 v1, 0x0

    .line 249
    .end local v0    # "isAllowed":Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->isBookmarkActionAvailable()Z

    move-result v1

    goto :goto_0
.end method

.method protected isFavouriteActionAvailable()Z
    .locals 5

    .prologue
    .line 219
    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v1

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_SCHEDULE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    invoke-virtual {v1, v2, v3, v4}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v0

    .line 225
    .local v0, "isAllowed":Z
    if-nez v0, :cond_0

    .line 227
    const/4 v1, 0x0

    .line 232
    .end local v0    # "isAllowed":Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->isFavouriteActionAvailable()Z

    move-result v1

    goto :goto_0
.end method

.method protected onBookmarSet(Z)V
    .locals 1
    .param p1, "isBookmarked"    # Z

    .prologue
    .line 321
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->collapse()V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->setBookmarked(Z)V

    .line 328
    return-void
.end method

.method protected onCheckAllowedToChangeFavourite(Z)Z
    .locals 8
    .param p1, "fav"    # Z

    .prologue
    .line 299
    if-nez p1, :cond_1

    .line 301
    const-class v2, Lcom/genie_connect/android/repository/AgendaItemRepository;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/repository/AgendaItemRepository;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/genie_connect/android/repository/AgendaItemRepository;->canRemoveSessionFromAgenda(J)Z

    move-result v0

    .line 303
    .local v0, "canRemove":Z
    if-nez v0, :cond_0

    .line 304
    sget v2, Lcom/eventgenie/android/R$string;->message_cannot_remove_from_agenda:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v7, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 314
    .end local v0    # "canRemove":Z
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onCheckAllowedToChangeFavourite(Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    .line 146
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    sget v4, Lcom/eventgenie/android/R$layout;->activity_details_entity:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->setContentView(I)V

    .line 149
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->details_title_format:I

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v8

    sget-object v9, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v10, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v8, v9, v10}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(I[Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 152
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "entity_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->setEntityId(J)V

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ SESSIONS: Opening session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getEntityId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 156
    const-class v4, Lcom/genie_connect/android/repository/SessionRepository;

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/android/repository/SessionRepository;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getEntityId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/repository/SessionRepository;->getById(Ljava/lang/Long;)Lcom/genie_connect/common/db/model/Session;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mSession:Lcom/genie_connect/common/db/model/Session;

    .line 157
    const-class v4, Lcom/genie_connect/android/repository/AgendaItemRepository;

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/android/repository/AgendaItemRepository;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getEntityId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/repository/AgendaItemRepository;->isSessionOnWaitList(Ljava/lang/Long;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mIsWaitlisted:Z

    .line 158
    new-instance v4, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getEntityId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v4, p0, v5, v6}, Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    iput-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mFragmentFactory:Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

    .line 159
    const-class v4, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mSession:Lcom/genie_connect/common/db/model/Session;

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/viewconfig/ViewConfigurationFactory;->createSessionDetailViewConfiguration(Lcom/genie_connect/common/db/model/Session;)Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mViewConfig:Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;

    .line 161
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mSession:Lcom/genie_connect/common/db/model/Session;

    if-nez v4, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->finish()V

    .line 175
    :goto_0
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mScheduleConfig:Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->showActivityStream()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getWidgets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/db/config/WidgetLink;

    .line 177
    .local v3, "listItem":Lcom/genie_connect/android/db/config/WidgetLink;
    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/WidgetLink;->getType()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/GenieWidget;->ACTIVITYSTREAM:Lcom/genie_connect/android/db/config/GenieWidget;

    if-ne v4, v5, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->ACTIVITYSTREAM_POST:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v4, v5, v11}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_1

    .line 165
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listItem":Lcom/genie_connect/android/db/config/WidgetLink;
    :cond_1
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mSession:Lcom/genie_connect/common/db/model/Session;

    iget-object v4, v4, Lcom/genie_connect/common/db/model/Session;->leadChair:Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 166
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mSession:Lcom/genie_connect/common/db/model/Session;

    iget-object v4, v4, Lcom/genie_connect/common/db/model/Session;->leadChair:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mLeadChairId:J

    .line 170
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mScheduleConfig:Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    .line 172
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->populateUI()V

    goto :goto_0

    .line 185
    :cond_3
    sget v4, Lcom/eventgenie/android/R$id;->bottom_sheet_layout_include:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 186
    .local v1, "bottomSheetLayout":Landroid/widget/LinearLayout;
    new-instance v4, Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/eventgenie/android/activities/sessions/BottomSheet;-><init>(Lcom/genie_connect/android/db/config/AppConfig;Landroid/widget/LinearLayout;)V

    iput-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    .line 189
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->isFavouriteActionAvailable()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->setFavouriteActionAvailable(Z)V

    .line 190
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->isBookmarkActionAvailable()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->setBookmarkActionAvailable(Z)V

    .line 192
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getIsFavourite()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->setFavourite(Z)V

    .line 193
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getIsBookmarked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->setBookmarked(Z)V

    .line 195
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->updateFavouriteBookmarkIcons()V

    .line 196
    return-void
.end method

.method public onFavouriteClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    new-instance v1, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$1;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$1;-><init>(Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->setAttendSessionOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    new-instance v1, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$2;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity$2;-><init>(Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->setBookmarkSessionOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->expand()V

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->collapse()V

    goto :goto_0
.end method

.method protected onFavouriteSet(Z)V
    .locals 5
    .param p1, "isFavourite"    # Z

    .prologue
    .line 334
    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    if-eqz v3, :cond_0

    .line 335
    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->collapse()V

    .line 338
    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {v3, p1}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->setFavourite(Z)V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Label;->AGENDA_SESSION_ADDED:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "addedSessionLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Label;->AGENDA_SESSION_REMOVED:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "removeSessionLabel":Ljava/lang/String;
    if-eqz p1, :cond_3

    move-object v1, v0

    .line 345
    .local v1, "message":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 346
    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v1, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 349
    :cond_1
    if-nez p1, :cond_2

    .line 351
    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mWaitlistLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    :cond_2
    return-void

    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    move-object v1, v2

    .line 344
    goto :goto_0
.end method

.method public onFeedbackClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mWaitForSurveysEventFromLSS:Z

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mFeedbackManager:Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->showFeedback()V

    .line 212
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mFeedbackManager:Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->isOverrideSurvey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mWaitForSurveysEventFromLSS:Z

    goto :goto_0
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/eventgenie/android/R$string;->share_noun_format:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    sget-object v8, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v9, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v7, v8, v9}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getEventNameShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "title":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, "subject":Ljava/lang/String;
    new-instance v1, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v1, p0, v0}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    .line 362
    .local v1, "manager":Lcom/eventgenie/android/utils/intents/ShareManager;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getEntityId()J

    move-result-wide v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 368
    return-void
.end method

.method protected setupTabs()V
    .locals 4

    .prologue
    .line 425
    new-instance v0, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mViewConfig:Lcom/eventgenie/android/viewconfig/SessionDetailViewConfiguration;

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mFragmentFactory:Lcom/eventgenie/android/fragments/factory/EntityDetailsFragmentFactory;

    invoke-direct {v0, v1, v2, v3}, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/eventgenie/android/viewconfig/base/TabbedViewConfiguration;Lcom/eventgenie/android/fragments/factory/FragmentFactory;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    .line 426
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 427
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 428
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 429
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 430
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 432
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/fragment/ViewConfigurationPagerAdapter;->shouldHideIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SessionDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 435
    :cond_0
    return-void
.end method
