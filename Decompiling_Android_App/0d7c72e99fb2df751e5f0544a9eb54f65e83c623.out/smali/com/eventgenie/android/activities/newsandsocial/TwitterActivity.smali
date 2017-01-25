.class public Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;
.super Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;
.source "TwitterActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, "fragmentNumber":I
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieViewPagerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget v6, Lcom/eventgenie/android/R$layout;->activity_twitter_default:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v6

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getTwitter()Lcom/genie_connect/android/db/config/widgets/TwitterConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v6

    sget-object v7, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v6, v7, v8}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 74
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v6

    sget-object v7, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->TWEET:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v6, v7, v8}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 76
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 78
    .local v4, "myBundle":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 79
    const-string v6, "hide_advert"

    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->showAdvert()V

    .line 84
    :cond_0
    new-instance v6, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;)V

    iput-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    .line 87
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getTwitter()Lcom/genie_connect/android/db/config/widgets/TwitterConfig;

    move-result-object v5

    .line 89
    .local v5, "twitterConfig":Lcom/genie_connect/android/db/config/widgets/TwitterConfig;
    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->getUser()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->getUnofficialIncludes()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "mode"

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    const-string v6, "param2"

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->getUnnoficialSearchQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v6, "param"

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->getUser()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v6, "FRAGMENT_NUMBER"

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "fragmentNumber":I
    .local v3, "fragmentNumber":I
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    new-instance v1, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;-><init>()V

    .line 96
    .local v1, "frag":Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 97
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    sget v7, Lcom/eventgenie/android/R$string;->twitter_everything:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    move v2, v3

    .line 105
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "frag":Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;
    .end local v3    # "fragmentNumber":I
    .restart local v2    # "fragmentNumber":I
    :cond_1
    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->getUser()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v6, "mode"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const-string v6, "param"

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->getUser()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v6, "FRAGMENT_NUMBER"

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "fragmentNumber":I
    .restart local v3    # "fragmentNumber":I
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    new-instance v1, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;-><init>()V

    .line 111
    .restart local v1    # "frag":Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 112
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    sget v7, Lcom/eventgenie/android/R$string;->twitter_official:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    move v2, v3

    .line 115
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "frag":Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;
    .end local v3    # "fragmentNumber":I
    .restart local v2    # "fragmentNumber":I
    :cond_2
    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->getUnofficialIncludes()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string v6, "mode"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    const-string v6, "param"

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->getUnnoficialSearchQuery()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v6, "FRAGMENT_NUMBER"

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "fragmentNumber":I
    .restart local v3    # "fragmentNumber":I
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    new-instance v1, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;-><init>()V

    .line 121
    .restart local v1    # "frag":Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 122
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    sget v7, Lcom/eventgenie/android/R$string;->twitter_unofficial:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    move v2, v3

    .line 125
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "frag":Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;
    .end local v3    # "fragmentNumber":I
    .restart local v2    # "fragmentNumber":I
    :cond_3
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v6

    iget-object v7, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->mFragmentAdapter:Lcom/eventgenie/android/adapters/base/GenieFragmentPagerAdapter;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 126
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 127
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 128
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v6}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 129
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v6, p0}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 130
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 160
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 166
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 172
    return-void
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    const-string v0, "^ onRefreshClick"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onTweetClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getTwitter()Lcom/genie_connect/android/db/config/widgets/TwitterConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/TwitterConfig;->getDefaultTweetContent()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/managers/TwitterManager;->getWebIntentToTweet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 154
    invoke-static {p0}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyTweeted(Landroid/content/Context;)Z

    .line 155
    return-void
.end method
