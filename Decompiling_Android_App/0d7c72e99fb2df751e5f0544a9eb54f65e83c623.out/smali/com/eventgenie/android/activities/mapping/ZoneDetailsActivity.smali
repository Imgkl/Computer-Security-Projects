.class public Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;
.super Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;
.source "ZoneDetailsActivity.java"


# static fields
.field public static final ENTITY_KIND:Ljava/lang/String;

.field public static final ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;


# instance fields
.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

.field private mLogo:Landroid/widget/ImageView;

.field private mTvName:Landroid/widget/TextView;

.field private mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mZoneCursor:Luk/co/alt236/easycursor/EasyCursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPZONE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->ENTITY_KIND:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->MAPZONES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;-><init>()V

    return-void
.end method

.method private populateUI()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 101
    new-instance v2, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v2}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 103
    sget v2, Lcom/eventgenie/android/R$id;->header_logo:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "header":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 106
    sget v2, Lcom/eventgenie/android/R$id;->logo:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mLogo:Landroid/widget/ImageView;

    .line 107
    sget v2, Lcom/eventgenie/android/R$id;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mTvName:Landroid/widget/TextView;

    .line 109
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mZoneCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v4, "logoUrl"

    invoke-interface {v3, v4}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/FeatureConfig;->getExhibitorsFeatures()Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;->getDefaultThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->pickFirstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "logoUrl":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->setShareUrl(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mZoneCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v3, "name"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->setEntityName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->setLogoUrl(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getLogoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getLogoUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mTvName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mZoneCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v2, v5, v3}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/AppConfig;ZLuk/co/alt236/easycursor/EasyCursor;)V

    .line 127
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->setupTabs()V

    .line 128
    return-void

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mLogo:Landroid/widget/ImageView;

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
    .line 44
    sget-object v0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->ENTITY_KIND:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v1, Lcom/eventgenie/android/R$layout;->activity_details_entity:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "entity_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->setEntityId(J)V

    .line 60
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->details_title_format:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    sget-object v6, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v7, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 65
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMapZones()Lcom/genie_connect/android/db/access/DbMapZones;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbMapZones;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mZoneCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 67
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mZoneCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->finish()V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->populateUI()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mZoneCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->close(Landroid/database/Cursor;)V

    .line 77
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onDestroy()V

    .line 78
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
    .line 82
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 83
    return-void
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/eventgenie/android/R$string;->share_exhibitor_format:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getEventNameShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "title":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getShareUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "subject":Ljava/lang/String;
    new-instance v1, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v1, p0, v0}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    .line 92
    .local v1, "manager":Lcom/eventgenie/android/utils/intents/ShareManager;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getEntityId()J

    move-result-wide v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 98
    return-void
.end method

.method protected setupTabs()V
    .locals 5

    .prologue
    .line 133
    new-instance v2, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {v2}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;-><init>()V

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    .line 134
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 135
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 136
    new-instance v0, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 138
    .local v0, "helper":Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mZoneCursor:Luk/co/alt236/easycursor/EasyCursor;

    sget v3, Lcom/eventgenie/android/R$string;->info:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v0, v2, v3, v4}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->addExhibitorDetailsView(Luk/co/alt236/easycursor/EasyCursor;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;)Landroid/view/View;

    move-result-object v1

    .line 142
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    sget v3, Lcom/eventgenie/android/R$string;->info:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 145
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 147
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v2}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->shouldHideIndicator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/ZoneDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 150
    :cond_0
    return-void
.end method
