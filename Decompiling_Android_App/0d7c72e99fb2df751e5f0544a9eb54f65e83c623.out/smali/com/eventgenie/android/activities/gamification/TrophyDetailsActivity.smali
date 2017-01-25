.class public Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;
.super Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;
.source "TrophyDetailsActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field public static final ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ANALYTICS_WIDGET_FAV:Ljava/lang/String;

.field public static final ENTITY_KIND:Ljava/lang/String; = "trophies"

.field public static final ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_WIDGET_FAV:Ljava/lang/String;


# instance fields
.field private mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mTrophyCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mTrophyInfoPagesCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->GAMIFICATION:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 61
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->TROPHIES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 62
    sput-object v1, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->ENTITY_WIDGET_FAV:Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->GAMIFICATION:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 64
    sput-object v1, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->ANALYTICS_WIDGET_FAV:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;-><init>()V

    return-void
.end method

.method private populateUi()V
    .locals 8

    .prologue
    .line 139
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mTrophyCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v3, "name"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->setEntityName(Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mTrophyCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v3, "icon"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->setEntityImage(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mTrophyCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v3, "primaryInfoPage"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 143
    .local v0, "firstInfoPage":J
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {p0, v2, v0, v1}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->addInfoPageFragment(Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;J)V

    .line 148
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/FeatureConfig;->getGamificationFeatures()Lcom/genie_connect/android/db/config/features/GamificationFeatures;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->isEnableLeaderboard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->newInstance(Ljava/lang/String;JJ)Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->game_leaderboard:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mTrophyInfoPagesCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-static {v2}, Lcom/genie_connect/android/db/DbHelper;->has(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    :goto_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mTrophyInfoPagesCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v2}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    iget-object v3, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mTrophyInfoPagesCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v4, "id"

    invoke-interface {v3, v4}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mTrophyInfoPagesCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v6, "name"

    invoke-interface {v3, v6}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->addInfoPageFragment(Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;JLjava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mTrophyInfoPagesCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v2}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_0

    .line 166
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 167
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 168
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v2}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 170
    sget v2, Lcom/eventgenie/android/R$id;->header_gamification:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->populateHeader(Landroid/view/View;)V

    .line 171
    return-void
.end method


# virtual methods
.method public bridge synthetic getEntityId()J
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->getEntityId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEntityKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "trophies"

    return-object v0
.end method

.method public bridge synthetic getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->getEntityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sget v1, Lcom/eventgenie/android/R$layout;->activity_gamification_default:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "entity_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->setEntityId(J)V

    .line 104
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->details_title_format:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    sget-object v6, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v7, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTrophies()Lcom/genie_connect/android/db/access/DbTrophies;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbTrophies;->getTrophy(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mTrophyCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 109
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getInfopages()Lcom/genie_connect/android/db/access/DbInfopages;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbInfopages;->getInfopagesForTrophy(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mTrophyInfoPagesCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 111
    new-instance v1, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    .line 112
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 113
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 114
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v1, p0}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 116
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mTrophyCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->finish()V

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getGamification()Lcom/genie_connect/android/db/config/widgets/GamificationConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mTrophyCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v3, "sponsorCampaign"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)V

    .line 123
    invoke-direct {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->populateUi()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mTrophyCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->close(Landroid/database/Cursor;)V

    .line 130
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mTrophyInfoPagesCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->close(Landroid/database/Cursor;)V

    .line 131
    invoke-super {p0}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->onDestroy()V

    .line 132
    return-void
.end method

.method public bridge synthetic onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AdapterView;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # I
    .param p4, "x3"    # J

    .prologue
    .line 58
    invoke-super/range {p0 .. p5}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onMugshotClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 87
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 84
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->getEntityFragmentInfo(I)Landroid/util/Pair;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyEntityDetailsOpen(Landroid/content/Context;Landroid/util/Pair;)Z

    .line 94
    return-void
.end method

.method public populateHeader(Landroid/view/View;)V
    .locals 14
    .param p1, "header"    # Landroid/view/View;

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/access/Udm;->getGameStore()Lcom/genie_connect/android/db/access/GameStore;

    move-result-object v9

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getEntityId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/genie_connect/android/db/access/GameStore;->getMyScoreForTrophy(J)I

    move-result v9

    int-to-long v2, v9

    .line 176
    .local v2, "myScore":J
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/access/Udm;->getGameStore()Lcom/genie_connect/android/db/access/GameStore;

    move-result-object v9

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getEntityId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/genie_connect/android/db/access/GameStore;->getMaxTrophyThresholdValue(J)J

    move-result-wide v4

    .line 177
    .local v4, "maxValue":J
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/access/Udm;->getGameStore()Lcom/genie_connect/android/db/access/GameStore;

    move-result-object v9

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getEntityId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11, v2, v3}, Lcom/genie_connect/android/db/access/GameStore;->getColourForTrophy(JJ)I

    move-result v6

    .line 179
    .local v6, "color":I
    sget v9, Lcom/eventgenie/android/R$id;->progressbar:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/ui/other/TextProgressBar;

    .line 181
    .local v1, "bar":Lcom/eventgenie/android/ui/other/TextProgressBar;
    invoke-virtual {p1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 182
    sget v9, Lcom/eventgenie/android/R$id;->photo_overlay:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 187
    sget v9, Lcom/eventgenie/android/R$id;->visitor_name:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 188
    .local v8, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    sget v9, Lcom/eventgenie/android/R$id;->visitor_company:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "tv":Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 192
    .restart local v8    # "tv":Landroid/widget/TextView;
    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    sget v9, Lcom/eventgenie/android/R$id;->visitor_group:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 196
    invoke-virtual {v1, v12}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setVisibility(I)V

    .line 198
    invoke-static/range {v1 .. v6}, Lcom/eventgenie/android/ui/help/GamificationHelper;->setupProgressbar(Lcom/eventgenie/android/ui/other/TextProgressBar;JJI)V

    .line 204
    sget v9, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {p1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 205
    .local v7, "photo":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/TrophyDetailsActivity;->getEntityImage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/genie_connect/android/db/config/IconManager;->getTrophyIconResource(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 207
    .local v0, "imageRes":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v6, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_0
    sget v9, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
