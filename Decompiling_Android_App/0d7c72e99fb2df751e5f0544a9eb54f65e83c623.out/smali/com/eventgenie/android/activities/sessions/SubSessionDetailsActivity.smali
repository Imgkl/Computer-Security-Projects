.class public Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;
.super Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;
.source "SubSessionDetailsActivity.java"


# static fields
.field public static final ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ANALYTICS_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_KIND:Ljava/lang/String; = "subsessions"

.field public static final ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;


# instance fields
.field private mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mDownloadableMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

.field private mDownloadables:Luk/co/alt236/easycursor/EasyCursor;

.field private mFeedbackManager:Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

.field private mSpeakerMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

.field private mSpeakers:Luk/co/alt236/easycursor/EasyCursor;

.field private mSpeakersKey:Luk/co/alt236/easycursor/EasyCursor;

.field private mSubsession:Luk/co/alt236/easycursor/EasyCursor;

.field private mTvDay:Landroid/widget/TextView;

.field private mTvEnd:Landroid/widget/TextView;

.field private mTvName:Landroid/widget/TextView;

.field private mTvStart:Landroid/widget/TextView;

.field private mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SUBSESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 87
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->SCHEDULE:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 88
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_AGENDA:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->ENTITY_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 89
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->SCHEDULE:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 90
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_AGENDA:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->ANALYTICS_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$001(Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;

    .prologue
    .line 84
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onBookmarkClick()V

    return-void
.end method

.method private populateUI()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 408
    sget v4, Lcom/eventgenie/android/R$id;->header_session:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->setHeader(Landroid/view/ViewGroup;)V

    .line 409
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 411
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    const-string v5, "name"

    invoke-interface {v4, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->setEntityName(Ljava/lang/String;)V

    .line 412
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    const-string v5, "shareUrl"

    invoke-interface {v4, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->setShareUrl(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$id;->session_name:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mTvName:Landroid/widget/TextView;

    .line 415
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mTvName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    const-string v5, "canWaitlist"

    invoke-interface {v4, v5}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 419
    .local v1, "isWaitlistable":Z
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mTvName:Landroid/widget/TextView;

    invoke-static {v4, v1, v5}, Lcom/eventgenie/android/ui/help/UIUtils;->setWaitlistLabel(Landroid/content/Context;ZLandroid/widget/TextView;)V

    .line 422
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$id;->day:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mTvDay:Landroid/widget/TextView;

    .line 423
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$id;->start:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mTvStart:Landroid/widget/TextView;

    .line 424
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$id;->end:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mTvEnd:Landroid/widget/TextView;

    .line 426
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    const-string v5, "runningTime_from"

    invoke-interface {v4, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "startTime":Ljava/lang/String;
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    const-string v5, "runningTime_to"

    invoke-interface {v4, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "endTime":Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 431
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mTvStart:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getDataTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/SetupConfig;->getManageTimeFormat()I

    move-result v7

    invoke-static {v5, v3, v6, v7}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->doFormatTime(Landroid/content/Context;Ljava/lang/String;Ljava/util/TimeZone;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mTvEnd:Landroid/widget/TextView;

    sget v5, Lcom/eventgenie/android/R$string;->schedule_end_formatter:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lcom/genie_connect/common/utils/date/TimeFormatter;->getDataTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/SetupConfig;->getManageTimeFormat()I

    move-result v9

    invoke-static {v7, v0, v8, v9}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->doFormatTime(Landroid/content/Context;Ljava/lang/String;Ljava/util/TimeZone;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/managers/LocaleManager;->getCurrentLocaleObject()Ljava/util/Locale;

    move-result-object v2

    .line 436
    .local v2, "locale":Ljava/util/Locale;
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mTvDay:Landroid/widget/TextView;

    invoke-static {v3, v2}, Lcom/genie_connect/common/utils/date/TimeFormatter;->formatDayFromSqlite(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getScheduleCfg()Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/ScheduleConfig;->enableSharing()Z

    move-result v5

    iget-object v6, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v4, v5, v6}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/AppConfig;ZLuk/co/alt236/easycursor/EasyCursor;)V

    .line 441
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->setupTabs()V

    .line 442
    return-void
.end method

.method private updateFavouriteBookmarkIcons()V
    .locals 3

    .prologue
    .line 183
    sget v2, Lcom/eventgenie/android/R$id;->btn_title_favourite:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 184
    .local v0, "favButton":Landroid/widget/ImageButton;
    sget v2, Lcom/eventgenie/android/R$drawable;->ic_action_add_to_agenda:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 185
    sget v2, Lcom/eventgenie/android/R$id;->btn_title_unfavourite:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 186
    .local v1, "unfavButton":Landroid/widget/ImageButton;
    sget v2, Lcom/eventgenie/android/R$drawable;->ic_action_blue_agenda:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 187
    return-void
.end method


# virtual methods
.method protected doReloadAfterSurveysSynced()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->populateUI()V

    .line 192
    return-void
.end method

.method protected getAgendaItemEndTime()Ljava/util/Date;
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    const-string v1, "runningTime_to"

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->fromSqlDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected getAgendaItemStartTime()Ljava/util/Date;
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    const-string v1, "runningTime_from"

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/dateutils/AndroidTimeFormatter;->fromSqlDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getEntityKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "subsessions"

    return-object v0
.end method

.method public getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method protected isBookmarkActionAvailable()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 254
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-object v6, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    const-string v7, "session"

    invoke-interface {v6, v7}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, p0, v5, v6}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getPermissionGroupForEntity(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v2

    .line 255
    .local v2, "sessionParentPermissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 257
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v4

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_FAVOURITE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v4, v5, v6, v2}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v1

    .line 262
    .local v1, "parentAllowed":Z
    if-nez v1, :cond_1

    .line 263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ ACL: Prevent bookmarking of subsession /"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    const-string v6, "id"

    invoke-interface {v5, v6}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", because of parents\' permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    const-string v6, "session"

    invoke-interface {v5, v6}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 280
    .end local v1    # "parentAllowed":Z
    :cond_0
    :goto_0
    return v3

    .line 268
    :cond_1
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 269
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v4

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_FAVOURITE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    iget-object v7, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    invoke-virtual {v4, v5, v6, v7}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v0

    .line 274
    .local v0, "isAllowed":Z
    if-eqz v0, :cond_0

    .line 280
    .end local v0    # "isAllowed":Z
    :cond_2
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->isBookmarkActionAvailable()Z

    move-result v3

    goto :goto_0
.end method

.method protected isFavouriteActionAvailable()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-object v6, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    const-string v7, "session"

    invoke-interface {v6, v7}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, p0, v5, v6}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getPermissionGroupForEntity(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v2

    .line 221
    .local v2, "sessionParentPermissionGroup":Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 223
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v4

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_SCHEDULE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    invoke-virtual {v4, v5, v6, v2}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v1

    .line 228
    .local v1, "parentAllowed":Z
    if-nez v1, :cond_1

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ ACL: Prevent favouriting of subsession /"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    const-string v6, "id"

    invoke-interface {v5, v6}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", because of parents\' permission"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 247
    .end local v1    # "parentAllowed":Z
    :cond_0
    :goto_0
    return v3

    .line 234
    :cond_1
    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;->getPermissionFailureMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 235
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v4

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;->ADD_TO_SCHEDULE:Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;

    iget-object v7, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mPermissionGroup:Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    invoke-virtual {v4, v5, v6, v7}, Lcom/genie_connect/android/db/datastore/acl/Acl;->canPerformAction(Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;Lcom/genie_connect/android/db/datastore/acl/PermissionGroupAction;Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;)Z

    move-result v0

    .line 240
    .local v0, "isAllowed":Z
    if-eqz v0, :cond_0

    .line 247
    .end local v0    # "isAllowed":Z
    :cond_2
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->isFavouriteActionAvailable()Z

    move-result v3

    goto :goto_0
.end method

.method protected onBookmarSet(Z)V
    .locals 1
    .param p1, "isBookmarked"    # Z

    .prologue
    .line 333
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->collapse()V

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->setBookmarked(Z)V

    .line 340
    return-void
.end method

.method protected onCheckAllowedToChangeFavourite(Z)Z
    .locals 8
    .param p1, "fav"    # Z

    .prologue
    .line 369
    if-nez p1, :cond_1

    .line 371
    const-class v2, Lcom/genie_connect/android/repository/AgendaItemRepository;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/repository/AgendaItemRepository;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/genie_connect/android/repository/AgendaItemRepository;->canRemoveSubsessionFromAgenda(J)Z

    move-result v0

    .line 373
    .local v0, "canRemove":Z
    if-nez v0, :cond_0

    .line 374
    sget v2, Lcom/eventgenie/android/R$string;->message_cannot_remove_from_agenda:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SUBSESSIONS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v7, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 384
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
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    sget v0, Lcom/eventgenie/android/R$layout;->activity_details_entity:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 132
    .local v7, "b":Landroid/os/Bundle;
    const-string v0, "entity_id"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->setEntityId(J)V

    .line 134
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->details_title_format:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(I[Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 137
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSubSessions()Lcom/genie_connect/android/db/access/DbSubsessions;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/db/access/DbSubsessions;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    .line 139
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->finish()V

    .line 168
    :goto_0
    sget v0, Lcom/eventgenie/android/R$id;->bottom_sheet_layout_include:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 169
    .local v8, "bottomSheetLayout":Landroid/widget/LinearLayout;
    new-instance v0, Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/eventgenie/android/activities/sessions/BottomSheet;-><init>(Lcom/genie_connect/android/db/config/AppConfig;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    .line 173
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->isFavouriteActionAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->setFavouriteActionAvailable(Z)V

    .line 174
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->isBookmarkActionAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->setBookmarkActionAvailable(Z)V

    .line 176
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getIsFavourite()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->setFavourite(Z)V

    .line 177
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getIsBookmarked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->setBookmarked(Z)V

    .line 179
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->updateFavouriteBookmarkIcons()V

    .line 180
    return-void

    .line 142
    .end local v8    # "bottomSheetLayout":Landroid/widget/LinearLayout;
    :cond_0
    new-instance v0, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mFeedbackManager:Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

    .line 150
    new-instance v0, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v0}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 151
    new-instance v0, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v0}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSpeakerMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 152
    new-instance v0, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v0}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mDownloadableMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 154
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getEntityId()J

    move-result-wide v2

    sget-object v1, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->KEY_SPEAKER:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    invoke-virtual {v0, v2, v3, v1}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSpeakersForSubSession(JLcom/genie_connect/common/db/model/Speaker$SpeakerType;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSpeakersKey:Luk/co/alt236/easycursor/EasyCursor;

    .line 158
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getEntityId()J

    move-result-wide v2

    sget-object v1, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->SPEAKER:Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    invoke-virtual {v0, v2, v3, v1}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSpeakersForSubSession(JLcom/genie_connect/common/db/model/Speaker$SpeakerType;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSpeakers:Luk/co/alt236/easycursor/EasyCursor;

    .line 162
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDownloadablesDb()Lcom/genie_connect/android/db/access/DbDownloadables;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/db/access/DbDownloadables;->getDownloadablesForSubsession(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mDownloadables:Luk/co/alt236/easycursor/EasyCursor;

    .line 164
    invoke-direct {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->populateUI()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->close(Landroid/database/Cursor;)V

    .line 198
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSpeakersKey:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->close(Landroid/database/Cursor;)V

    .line 199
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSpeakers:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->close(Landroid/database/Cursor;)V

    .line 200
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mDownloadables:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->close(Landroid/database/Cursor;)V

    .line 202
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onDestroy()V

    .line 203
    return-void
.end method

.method public onFavouriteClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    new-instance v1, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity$1;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity$1;-><init>(Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->setAttendSessionOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    new-instance v1, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity$2;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity$2;-><init>(Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->setBookmarkSessionOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->expand()V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->collapse()V

    goto :goto_0
.end method

.method protected onFavouriteSet(Z)V
    .locals 5
    .param p1, "isFavourite"    # Z

    .prologue
    .line 391
    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    if-eqz v3, :cond_0

    .line 392
    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->collapse()V

    .line 395
    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mBottomSheet:Lcom/eventgenie/android/activities/sessions/BottomSheet;

    invoke-virtual {v3, p1}, Lcom/eventgenie/android/activities/sessions/BottomSheet;->setFavourite(Z)V

    .line 398
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Label;->AGENDA_SESSION_ADDED:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "addedSessionLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Label;->AGENDA_SESSION_REMOVED:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "removeSessionLabel":Ljava/lang/String;
    if-eqz p1, :cond_2

    move-object v1, v0

    .line 402
    .local v1, "message":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 403
    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v1, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 405
    :cond_1
    return-void

    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .line 401
    goto :goto_0
.end method

.method public onFeedbackClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mWaitForSurveysEventFromLSS:Z

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mFeedbackManager:Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->showFeedback()V

    .line 212
    iget-object v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mFeedbackManager:Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/managers/feedback/FeedbackManager;->isOverrideSurvey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mWaitForSurveysEventFromLSS:Z

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "v"    # Landroid/view/View;
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
    .line 285
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/eventgenie/android/R$id;->downloadable_row:I

    if-ne v4, v5, :cond_1

    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isUseNewDownloadables()Z

    move-result v4

    if-nez v4, :cond_1

    .line 286
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/eventgenie/android/utils/ValueCheck;->tryLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 287
    .local v2, "dlId":J
    new-instance v1, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mDownloadables:Luk/co/alt236/easycursor/EasyCursor;

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;-><init>(JLandroid/content/Context;Landroid/database/Cursor;)V

    .line 291
    .local v1, "utils":Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;
    invoke-virtual {v1}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->getProperAlertDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 292
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 296
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "utils":Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;
    .end local v2    # "dlId":J
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/eventgenie/android/R$string;->share_noun_format:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    sget-object v8, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v9, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v7, v8, v9}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getEventNameShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "title":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "subject":Ljava/lang/String;
    new-instance v1, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v1, p0, v0}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    .line 358
    .local v1, "manager":Lcom/eventgenie/android/utils/intents/ShareManager;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getEntityId()J

    move-result-wide v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 364
    return-void
.end method

.method protected setupTabs()V
    .locals 7

    .prologue
    .line 445
    new-instance v2, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {v2}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;-><init>()V

    iput-object v2, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    .line 446
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 447
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 448
    new-instance v0, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 449
    .local v0, "helper":Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;
    new-instance v1, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 451
    .local v1, "sessionHelper":Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSubsession:Luk/co/alt236/easycursor/EasyCursor;

    sget v4, Lcom/eventgenie/android/R$string;->info:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v1, v3, v4, v5}, Lcom/eventgenie/android/fragments/utils/SessionDetailsViewHelper;->addSubSessionDetailsView(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->info:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 453
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSpeakersKey:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->KEYSPEAKERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSpeakerMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-static {v2, v3, v4, p0, v5}, Lcom/eventgenie/android/ui/help/SessionHelper;->addSpeakerListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 457
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSpeakers:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SPEAKERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSpeakerMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-static {v2, v3, v4, p0, v5}, Lcom/eventgenie/android/ui/help/SessionHelper;->addSpeakerListSection(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;)V

    .line 461
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mSpeakerMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SPEAKERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->SPEAKERS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 464
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mDownloadables:Luk/co/alt236/easycursor/EasyCursor;

    sget v4, Lcom/eventgenie/android/R$string;->downloads:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mDownloadableMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v0, v3, v4, v5}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->addDownloadableList(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->downloads:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 467
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 468
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v2}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 470
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v2}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->shouldHideIndicator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/eventgenie/android/activities/sessions/SubSessionDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 473
    :cond_0
    return-void
.end method
