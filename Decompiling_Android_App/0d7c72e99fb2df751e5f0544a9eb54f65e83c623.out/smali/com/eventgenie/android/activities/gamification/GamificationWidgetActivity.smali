.class public Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;
.super Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;
.source "GamificationWidgetActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

.field private mGameConfig:Lcom/genie_connect/android/db/config/widgets/GamificationConfig;

.field private mHeaderView:Landroid/view/View;

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private final mLssReceiver:Landroid/content/BroadcastReceiver;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;-><init>()V

    .line 79
    new-instance v0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity$1;-><init>(Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addInfoPageFragment(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 90
    const-class v1, Lcom/genie_connect/android/repository/InfoPageRepository;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/InfoPageRepository;

    .line 92
    .local v0, "repo":Lcom/genie_connect/android/repository/InfoPageRepository;
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/genie_connect/android/repository/InfoPageRepository;->hasPermissionToViewAndOpen(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-static {p1, p2}, Lcom/eventgenie/android/fragments/infopages/InfopageFragment;->newInstance(J)Lcom/eventgenie/android/fragments/infopages/InfopageFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getDatabaseCache()Lcom/genie_connect/android/db/access/DatabaseCache;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4}, Lcom/genie_connect/android/db/access/DatabaseCache;->getInfoPageName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 95
    :cond_0
    return-void
.end method

.method private populateUi()V
    .locals 14

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v8

    sget-object v9, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 175
    sget v8, Lcom/eventgenie/android/R$id;->header_gamification:I

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mHeaderView:Landroid/view/View;

    .line 176
    iget-object v8, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->populateVisitorHeader(Landroid/view/View;)V

    .line 178
    iget-object v8, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mGameConfig:Lcom/genie_connect/android/db/config/widgets/GamificationConfig;

    invoke-virtual {v8}, Lcom/genie_connect/android/db/config/widgets/GamificationConfig;->getPrimaryInfoPage()J

    move-result-wide v2

    .line 179
    .local v2, "firstInfoPage":J
    iget-object v8, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mGameConfig:Lcom/genie_connect/android/db/config/widgets/GamificationConfig;

    invoke-virtual {v8}, Lcom/genie_connect/android/db/config/widgets/GamificationConfig;->getSecondaryInfoPages()[J

    move-result-object v7

    .line 181
    .local v7, "secondaryInfoPages":[J
    invoke-direct {p0, v2, v3}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->addInfoPageFragment(J)V

    .line 183
    iget-object v8, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-static {}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->newInstance()Lcom/eventgenie/android/fragments/gamification/GameListFragment;

    move-result-object v9

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v10

    sget-object v11, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->GAMES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v12, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v10, v11, v12}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genie_connect/android/db/config/FeatureConfig;->getGamificationFeatures()Lcom/genie_connect/android/db/config/features/GamificationFeatures;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genie_connect/android/db/config/features/GamificationFeatures;->isEnableLeaderboard()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 186
    iget-object v8, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v10

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->newInstance(JJ)Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;

    move-result-object v9

    sget v10, Lcom/eventgenie/android/R$string;->game_leaderboard:I

    invoke-virtual {p0, v10}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 192
    :cond_0
    move-object v0, v7

    .local v0, "arr$":[J
    array-length v6, v0

    .local v6, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v6, :cond_1

    aget-wide v4, v0, v1

    .line 193
    .local v4, "id":J
    invoke-direct {p0, v4, v5}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->addInfoPageFragment(J)V

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v4    # "id":J
    :cond_1
    iget-object v8, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v9, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 197
    iget-object v8, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 198
    iget-object v8, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v8}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 199
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    sget v0, Lcom/eventgenie/android/R$layout;->activity_gamification_default:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->setContentView(I)V

    .line 101
    new-instance v0, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    .line 102
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 103
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 104
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0, p0}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 106
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->onLoginSuccess()V

    .line 109
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 113
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onDestroy()V

    .line 115
    return-void
.end method

.method protected onLiveSyncCompleted()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->showIndicator(Z)V

    .line 119
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->populateVisitorHeader(Landroid/view/View;)V

    .line 120
    return-void
.end method

.method protected onLoginSuccess()V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getGamification()Lcom/genie_connect/android/db/config/widgets/GamificationConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mGameConfig:Lcom/genie_connect/android/db/config/widgets/GamificationConfig;

    .line 125
    iget-object v1, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mGameConfig:Lcom/genie_connect/android/db/config/widgets/GamificationConfig;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    .local v0, "syncFilter":Landroid/content/IntentFilter;
    const-string v1, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 129
    invoke-direct {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->populateUi()V

    .line 130
    return-void
.end method

.method public onMugshotClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 138
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 135
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->getEntityFragmentInfo(I)Landroid/util/Pair;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyEntityDetailsOpen(Landroid/content/Context;Landroid/util/Pair;)Z

    .line 145
    return-void
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 149
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->checkForUpdates()V

    .line 151
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->showIndicator(Z)V

    .line 153
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "games"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    if-eqz p1, :cond_0

    .line 156
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onResume()V

    .line 164
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    .line 166
    .local v0, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->isShowMe()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->onRefreshClick(Landroid/view/View;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createEnableNetworkingDialog(Landroid/app/Activity;Z)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public populateVisitorHeader(Landroid/view/View;)V
    .locals 8
    .param p1, "header"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 205
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 206
    sget v4, Lcom/eventgenie/android/R$id;->photo_overlay:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 209
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v3

    .line 211
    .local v3, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-eqz v3, :cond_0

    .line 213
    sget v4, Lcom/eventgenie/android/R$id;->visitor_name:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 214
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v3, v6}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getFullName(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    sget v4, Lcom/eventgenie/android/R$id;->visitor_company:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "tv":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 217
    .restart local v1    # "tv":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getCompanyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    sget v4, Lcom/eventgenie/android/R$id;->visitor_group:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "tv":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 220
    .restart local v1    # "tv":Landroid/widget/TextView;
    sget v4, Lcom/eventgenie/android/R$string;->overall_score_formatter:I

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/access/Udm;->getGameStore()Lcom/genie_connect/android/db/access/GameStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/access/GameStore;->getTotalScore()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    sget v4, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 224
    .local v0, "photo":Landroid/widget/ImageView;
    const-string v4, "mugShotUrl"

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getMugShotUrl()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 231
    .end local v0    # "photo":Landroid/widget/ImageView;
    .end local v1    # "tv":Landroid/widget/TextView;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected showIndicator(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 236
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 237
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/eventgenie/android/activities/gamification/GamificationWidgetActivity;->showIndicator(ZZ)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    instance-of v2, v0, Lcom/eventgenie/android/activities/base/GenieTabActivity;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 239
    check-cast v1, Lcom/eventgenie/android/activities/base/GenieTabActivity;

    .line 240
    .local v1, "parentActivity":Lcom/eventgenie/android/activities/base/GenieTabActivity;
    invoke-virtual {v1, p1}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->showIndicator(Z)V

    goto :goto_0
.end method
