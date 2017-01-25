.class public Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;
.super Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;
.source "DownloadableDetailsActivity.java"


# static fields
.field public static final ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ANALYTICS_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_KIND:Ljava/lang/String; = "downloadables"

.field public static final ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;


# instance fields
.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mDownloadableCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

.field private mIvPhoto:Landroid/widget/ImageView;

.field private mTvCompany:Landroid/widget/TextView;

.field private mTvName:Landroid/widget/TextView;

.field private mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private startDownloadCallback:Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->DOWNLOADABLES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 84
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->NONE:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 85
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_DOWNLOADS:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->ENTITY_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 86
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->NONE:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 87
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_DOWNLOADS:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->ANALYTICS_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;-><init>()V

    .line 294
    new-instance v0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$1;-><init>(Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->startDownloadCallback:Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->doActionAfterGettingPermission()V

    return-void
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;)Lcom/eventgenie/android/utils/help/DownloadableHelper;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;)Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getmPermissionGroup()Lcom/genie_connect/android/db/datastore/acl/AclPermissionGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->showBottomBarActions()V

    return-void
.end method

.method private doActionAfterGettingPermission()V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    new-instance v1, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;

    iget-object v2, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity$2;-><init>(Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->retrieveFile(Lcom/eventgenie/android/utils/asynctasks/DownloadAssetTask;)V

    .line 345
    return-void
.end method

.method private populateUI()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 232
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadableCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string/jumbo v3, "thumbnailUrl"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/FeatureConfig;->getDownloadFeatures()Lcom/genie_connect/android/db/config/features/DownloadFeatures;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/features/DownloadFeatures;->getDefaultThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->pickFirstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "logoUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadableCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v2, "fileName"

    invoke-interface {v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->setEntityName(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadableCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v2, "downloadUrl"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->setShareUrl(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->setLogoUrl(Ljava/lang/String;)V

    .line 240
    sget v1, Lcom/eventgenie/android/R$id;->header_speaker:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->setHeader(Landroid/view/ViewGroup;)V

    .line 241
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 243
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->speaker_name:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mTvName:Landroid/widget/TextView;

    .line 244
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->speaker_company:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mTvCompany:Landroid/widget/TextView;

    .line 245
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mIvPhoto:Landroid/widget/ImageView;

    .line 247
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mTvName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mTvCompany:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mIvPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadableCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v1, v5, v2}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/AppConfig;ZLuk/co/alt236/easycursor/EasyCursor;)V

    .line 255
    invoke-direct {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->showBottomBarActions()V

    .line 257
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->setupTabs()V

    .line 258
    return-void
.end method

.method private showBottomBarActions()V
    .locals 4

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v0

    .line 362
    .local v0, "b":Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;
    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->fileExists(Ljava/lang/String;)Z

    move-result v1

    .line 364
    .local v1, "fileExists":Z
    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->EMAIL:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;

    invoke-virtual {v0, v2, v1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V

    .line 365
    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->OPEN:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;

    invoke-virtual {v0, v2, v1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V

    .line 366
    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->DELETE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;

    invoke-virtual {v0, v2, v1}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V

    .line 367
    sget-object v3, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->DOWNLOAD:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V

    .line 369
    .end local v1    # "fileExists":Z
    :cond_0
    return-void

    .line 367
    .restart local v1    # "fileExists":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doActionAfterGettingPermissions()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method protected doActionAfterRejectingPermissions()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->doActionAfterRejectingPermissions()V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": the permission was not accepted. Disabling the buttons in the future would be a nice to have"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mAskForPermissionAgain:Z

    .line 188
    return-void
.end method

.method public getEntityKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "downloadables"

    return-object v0
.end method

.method public getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method protected getPermissionNotGrantedDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_notgranted_storage_request_detail:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionNotGrantedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_notgranted_storage_title:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionRequestDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_rationale_storage_request_detail:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPermissionRequestTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    sget v0, Lcom/eventgenie/android/R$string;->android_m_permission_rationale_storage_title:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRequestPermissionCode()I
    .locals 1

    .prologue
    .line 192
    const/16 v0, 0x7c

    return v0
.end method

.method protected getRequiredAllPermissions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getRequiredMainPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    sget v3, Lcom/eventgenie/android/R$layout;->activity_details_entity:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->setContentView(I)V

    .line 119
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 120
    .local v0, "b":Landroid/os/Bundle;
    const-string v3, "entity_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->setEntityId(J)V

    .line 122
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 125
    iget-object v3, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDownloadablesDb()Lcom/genie_connect/android/db/access/DbDownloadables;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/access/DbDownloadables;->getDownloadable(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadableCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 127
    iget-object v3, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadableCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->finish()V

    .line 135
    :goto_0
    new-instance v3, Lcom/eventgenie/android/utils/help/DownloadableHelper;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getEntityId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadableCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-direct {v3, v4, v5, p0, v6}, Lcom/eventgenie/android/utils/help/DownloadableHelper;-><init>(JLandroid/content/Context;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    .line 137
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->getWidgets()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/db/config/WidgetLink;

    .line 138
    .local v2, "listItem":Lcom/genie_connect/android/db/config/WidgetLink;
    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/WidgetLink;->getType()Lcom/genie_connect/android/db/config/GenieWidget;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/GenieWidget;->ACTIVITYSTREAM:Lcom/genie_connect/android/db/config/GenieWidget;

    if-ne v3, v4, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->ACTIVITYSTREAM_POST:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_1

    .line 131
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listItem":Lcom/genie_connect/android/db/config/WidgetLink;
    :cond_1
    new-instance v3, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v3}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v3, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 132
    invoke-direct {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->populateUI()V

    goto :goto_0

    .line 143
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public onDeleteClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 353
    invoke-direct {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->showBottomBarActions()V

    .line 354
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadableCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->close(Landroid/database/Cursor;)V

    .line 198
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onDestroy()V

    .line 199
    return-void
.end method

.method public onDownloadClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->startDownloadCallback:Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->setPermissionCallBack(Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;)V

    .line 287
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->checkPermissionAndDoAction()V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNetworkRequired(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onEmailClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->sendEmail()Z

    .line 349
    return-void
.end method

.method public onFeedbackClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 204
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onMugshotClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mTvCompany:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->showFullScreenImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public onOpenClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadbleHelper:Lcom/eventgenie/android/utils/help/DownloadableHelper;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/DownloadableHelper;->openFile()Z

    .line 358
    return-void
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/eventgenie/android/R$string;->share_noun_format_2:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    sget-object v8, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v9, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v7, v8, v9}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v2, v5}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getEventNameShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "title":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "subject":Ljava/lang/String;
    new-instance v1, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v1, p0, v0}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    .line 218
    .local v1, "manager":Lcom/eventgenie/android/utils/intents/ShareManager;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getEntityId()J

    move-result-wide v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 224
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onStart()V

    .line 229
    return-void
.end method

.method protected setupTabs()V
    .locals 5

    .prologue
    .line 261
    new-instance v1, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {v1}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;-><init>()V

    iput-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    .line 262
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 263
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 264
    new-instance v0, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 266
    .local v0, "helper":Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    iget-object v2, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mDownloadableCursor:Luk/co/alt236/easycursor/EasyCursor;

    sget v3, Lcom/eventgenie/android/R$string;->info:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v0, v2, v3, v4}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->addDownloadableDetailsView(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->info:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 274
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 275
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v1}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 277
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v1}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->shouldHideIndicator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/DownloadableDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 280
    :cond_0
    return-void
.end method
