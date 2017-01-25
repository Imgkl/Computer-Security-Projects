.class public Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;
.super Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;
.source "FacilityDetailsActivity.java"


# static fields
.field public static final ENTITY_KIND:Ljava/lang/String;

.field public static final ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;


# instance fields
.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mDownloadableCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mDownloadableMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

.field private mFacilityCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

.field private mLogo:Landroid/widget/ImageView;

.field private mTvName:Landroid/widget/TextView;

.field private mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPFACILITY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->ENTITY_KIND:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->MAPFACILITIES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;-><init>()V

    return-void
.end method

.method private populateUI()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 119
    new-instance v2, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v2}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 120
    new-instance v2, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v2}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mDownloadableMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 122
    sget v2, Lcom/eventgenie/android/R$id;->header_logo:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "header":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 125
    sget v2, Lcom/eventgenie/android/R$id;->logo:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mLogo:Landroid/widget/ImageView;

    .line 126
    sget v2, Lcom/eventgenie/android/R$id;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mTvName:Landroid/widget/TextView;

    .line 128
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mFacilityCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v4, "logoUrl"

    invoke-interface {v3, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/FeatureConfig;->getExhibitorsFeatures()Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;->getDefaultThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->pickFirstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "logoUrl":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->setShareUrl(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mFacilityCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v3, "name"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->setEntityName(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->setLogoUrl(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getLogoUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 143
    :goto_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mTvName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mFacilityCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v2, v5, v3}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/AppConfig;ZLuk/co/alt236/easycursor/EasyCursor;)V

    .line 146
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->setupTabs()V

    .line 147
    return-void

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getEntityKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->ENTITY_KIND:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget v1, Lcom/eventgenie/android/R$layout;->activity_details_entity:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "entity_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->setEntityId(J)V

    .line 67
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->details_title_format:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    sget-object v6, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v7, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 72
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMapFacilities()Lcom/genie_connect/android/db/access/DbMapFacilities;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbMapFacilities;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mFacilityCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 74
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mFacilityCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->finish()V

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDownloadablesDb()Lcom/genie_connect/android/db/access/DbDownloadables;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbDownloadables;->getDownloadablesForFacility(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mDownloadableCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 78
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->populateUI()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mFacilityCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->close(Landroid/database/Cursor;)V

    .line 85
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mDownloadableCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->close(Landroid/database/Cursor;)V

    .line 86
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onDestroy()V

    .line 87
    return-void
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
    .line 91
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/eventgenie/android/R$id;->downloadable_row:I

    if-ne v4, v5, :cond_1

    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isUseNewDownloadables()Z

    move-result v4

    if-nez v4, :cond_1

    .line 92
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/eventgenie/android/utils/ValueCheck;->tryLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 93
    .local v2, "dlId":J
    new-instance v1, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mDownloadableCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;-><init>(JLandroid/content/Context;Landroid/database/Cursor;)V

    .line 95
    .local v1, "utils":Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;
    invoke-virtual {v1}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->getProperAlertDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 96
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 101
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v1    # "utils":Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;
    .end local v2    # "dlId":J
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onResume()V

    .line 180
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mDownloadableCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->requery(Landroid/database/Cursor;)V

    .line 181
    return-void
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/eventgenie/android/R$string;->share_exhibitor_format:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getEventNameShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "title":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "subject":Ljava/lang/String;
    new-instance v1, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v1, p0, v0}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    .line 110
    .local v1, "manager":Lcom/eventgenie/android/utils/intents/ShareManager;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getEntityId()J

    move-result-wide v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 116
    return-void
.end method

.method protected setupTabs()V
    .locals 7

    .prologue
    .line 152
    new-instance v2, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {v2}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;-><init>()V

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    .line 153
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 154
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 155
    new-instance v0, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 157
    .local v0, "helper":Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mFacilityCursor:Luk/co/alt236/easycursor/EasyCursor;

    sget v3, Lcom/eventgenie/android/R$string;->info:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v0, v2, v3, v4}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->addExhibitorDetailsView(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    sget v3, Lcom/eventgenie/android/R$string;->info:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mDownloadableCursor:Luk/co/alt236/easycursor/EasyCursor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v4, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->downloads:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mDownloadableMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v0, v2, v3, v4}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->addDownloadableList(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;

    .line 169
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 170
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 172
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v2}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->shouldHideIndicator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/FacilityDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 175
    :cond_0
    return-void
.end method
