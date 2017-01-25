.class public Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;
.super Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;
.source "GameDetailsActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field public static final ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ANALYTICS_WIDGET_FAV:Ljava/lang/String;

.field public static final ENTITY_KIND:Ljava/lang/String; = "games"

.field public static final ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_WIDGET_FAV:Ljava/lang/String;


# instance fields
.field private mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

.field private mGameCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mGameInfoPagesCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mProgressBar:Lcom/eventgenie/android/ui/other/TextProgressBar;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->GAMES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 62
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->GAMIFICATION:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 63
    sput-object v1, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->ENTITY_WIDGET_FAV:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->GAMIFICATION:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 65
    sput-object v1, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->ANALYTICS_WIDGET_FAV:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;-><init>()V

    return-void
.end method

.method private populateUi()V
    .locals 8

    .prologue
    .line 173
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mGameCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v2, "name"

    invoke-interface {v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->setEntityName(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mGameCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string/jumbo v2, "thumbUrl"

    invoke-interface {v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->setEntityImage(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mGameCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v2, "primaryInfoPage"

    invoke-interface {v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 180
    .local v0, "firstInfoPage":Ljava/lang/Long;
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->addInfoPageFragment(Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;J)V

    .line 185
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->newInstance(J)Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->TROPHIES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getGamificationFeatures()Lcom/genie_connect/android/db/config/features/GamificationFeatures;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->isEnableLeaderboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-static {v2, v4, v5, v6, v7}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->newInstance(Ljava/lang/String;JJ)Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->game_leaderboard:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mGameInfoPagesCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-static {v1}, Lcom/genie_connect/android/db/DbHelper;->has(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mGameInfoPagesCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mGameInfoPagesCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v3, "id"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mGameInfoPagesCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v5, "name"

    invoke-interface {v4, v5}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->addInfoPageFragment(Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;JLjava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mGameInfoPagesCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_0

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 213
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 214
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v1}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 216
    sget v1, Lcom/eventgenie/android/R$id;->header_gamification:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->populateHeader(Landroid/view/View;)V

    .line 217
    return-void
.end method

.method private updateGamePointBar(Lcom/eventgenie/android/ui/other/TextProgressBar;)V
    .locals 4
    .param p1, "bar"    # Lcom/eventgenie/android/ui/other/TextProgressBar;

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getGameStore()Lcom/genie_connect/android/db/access/GameStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-static {p1, v0, v2, v3}, Lcom/eventgenie/android/ui/help/GamificationHelper;->setupProgressbarForGame(Lcom/eventgenie/android/ui/other/TextProgressBar;Lcom/genie_connect/android/db/access/GameStore;J)V

    .line 170
    return-void
.end method


# virtual methods
.method public bridge synthetic getEntityId()J
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->getEntityId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEntityKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "games"

    return-object v0
.end method

.method public bridge synthetic getEntityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->getEntityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->onCreate(Landroid/os/Bundle;)V

    .line 88
    sget v1, Lcom/eventgenie/android/R$layout;->activity_gamification_default:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "entity_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->setEntityId(J)V

    .line 93
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->details_title_format:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    sget-object v6, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v7, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v5, v6, v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getGames()Lcom/genie_connect/android/db/access/DbGames;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbGames;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mGameCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 98
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getInfopages()Lcom/genie_connect/android/db/access/DbInfopages;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getEntityId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbInfopages;->getInfopagesForGame(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mGameInfoPagesCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 100
    new-instance v1, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    .line 101
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 102
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 103
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v1, p0}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 105
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mGameCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->finish()V

    .line 114
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getGamification()Lcom/genie_connect/android/db/config/widgets/GamificationConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mGameCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v3, "sponsorCampaign"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)V

    .line 112
    invoke-direct {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->populateUi()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mGameCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->close(Landroid/database/Cursor;)V

    .line 119
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mGameInfoPagesCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->close(Landroid/database/Cursor;)V

    .line 120
    invoke-super {p0}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->onDestroy()V

    .line 121
    return-void
.end method

.method public bridge synthetic onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AdapterView;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # I
    .param p4, "x3"    # J

    .prologue
    .line 59
    invoke-super/range {p0 .. p5}, Lcom/eventgenie/android/activities/gamification/GamificationBaseDetailsScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onMugshotClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 129
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 126
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->getEntityFragmentInfo(I)Landroid/util/Pair;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyEntityDetailsOpen(Landroid/content/Context;Landroid/util/Pair;)Z

    .line 136
    return-void
.end method

.method public populateHeader(Landroid/view/View;)V
    .locals 5
    .param p1, "header"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 140
    sget v2, Lcom/eventgenie/android/R$id;->progressbar:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/eventgenie/android/ui/other/TextProgressBar;

    iput-object v2, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mProgressBar:Lcom/eventgenie/android/ui/other/TextProgressBar;

    .line 142
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    sget v2, Lcom/eventgenie/android/R$id;->photo_overlay:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 148
    sget v2, Lcom/eventgenie/android/R$id;->visitor_name:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 149
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getEntityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    sget v2, Lcom/eventgenie/android/R$id;->visitor_company:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "tv":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 153
    .restart local v1    # "tv":Landroid/widget/TextView;
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    sget v2, Lcom/eventgenie/android/R$id;->visitor_group:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mProgressBar:Lcom/eventgenie/android/ui/other/TextProgressBar;

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/ui/other/TextProgressBar;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->mProgressBar:Lcom/eventgenie/android/ui/other/TextProgressBar;

    invoke-direct {p0, v2}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->updateGamePointBar(Lcom/eventgenie/android/ui/other/TextProgressBar;)V

    .line 160
    sget v2, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 161
    .local v0, "photo":Landroid/widget/ImageView;
    sget v2, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getEntityImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GameDetailsActivity;->getEntityImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 166
    :cond_0
    return-void
.end method
