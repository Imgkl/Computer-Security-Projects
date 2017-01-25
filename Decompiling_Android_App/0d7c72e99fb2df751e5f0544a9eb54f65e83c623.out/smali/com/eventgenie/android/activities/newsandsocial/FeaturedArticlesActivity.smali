.class public Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "FeaturedArticlesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;,
        Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;
    }
.end annotation


# instance fields
.field private mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mGrid1:Landroid/widget/GridView;

.field mLatestMessageId:J

.field private mLssReceiver:Landroid/content/BroadcastReceiver;

.field private mTvMsgBody:Landroid/widget/TextView;

.field private mTvMsgContainer:Landroid/view/View;

.field private mTvMsgSubject:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mLatestMessageId:J

    .line 94
    new-instance v0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$1;-><init>(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    .line 334
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mGrid1:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mTvMsgSubject:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mTvMsgBody:Landroid/widget/TextView;

    return-object v0
.end method

.method private populateUI()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    sget v5, Lcom/eventgenie/android/R$id;->dashboard_window:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 211
    .local v2, "win":Landroid/widget/LinearLayout;
    sget v5, Lcom/eventgenie/android/R$id;->bg_image:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 212
    .local v0, "bg":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eventgenie/android/utils/help/BuildInfo;->isProoferAvailable()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/datastore/Datastore;->isMultiEventActive()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    move v1, v4

    .line 214
    .local v1, "getLiveArtwork":Z
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/ArtworkConfig;->hasDashboardBackgroundArtwork()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v1, :cond_6

    .line 215
    sget v5, Lcom/eventgenie/android/R$drawable;->custom_background:I

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    :goto_1
    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-static {p0, v5, v3, v4, v3}, Lcom/eventgenie/android/utils/help/ProoferUtils;->getApplicationArtwork(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;ZZZ)V

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    invoke-interface {v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->isMarkedAsHomeActivity()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/DashboardConfig;->isLatestMessageDisplayed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 226
    :cond_2
    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mTvMsgContainer:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 229
    :cond_3
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->isMarkedAsHomeActivity()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 230
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getDashboard()Lcom/genie_connect/android/db/config/widgets/DashboardConfig;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 233
    :cond_4
    sget v3, Lcom/eventgenie/android/R$id;->dashboard_grid_1:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mGrid1:Landroid/widget/GridView;

    .line 234
    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mGrid1:Landroid/widget/GridView;

    new-instance v4, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;

    iget-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v6

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;-><init>(Landroid/app/Activity;Luk/co/alt236/easycursor/EasyCursor;J)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mGrid1:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 236
    return-void

    .end local v1    # "getLiveArtwork":Z
    :cond_5
    move v1, v3

    .line 212
    goto :goto_0

    .line 217
    .restart local v1    # "getLiveArtwork":Z
    :cond_6
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getBackgroundColour()Lcom/genie_connect/android/db/config/misc/ColourConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/misc/ColourConfig;->getColour()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method private setHomeActionBarTitle()V
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 240
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    sget v3, Lcom/eventgenie/android/R$layout;->activity_dashboard_featured_articles:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->setContentView(I)V

    .line 126
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 127
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 128
    const-string/jumbo v3, "window_title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "title":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    .end local v2    # "title":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 139
    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getArticles()Lcom/genie_connect/android/db/access/DbArticles;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/DbArticles;->getArticlesForHome()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 141
    sget v3, Lcom/eventgenie/android/R$id;->message_subject:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mTvMsgSubject:Landroid/widget/TextView;

    .line 142
    sget v3, Lcom/eventgenie/android/R$id;->message_body:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mTvMsgBody:Landroid/widget/TextView;

    .line 143
    sget v3, Lcom/eventgenie/android/R$id;->dashboard_message_container:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mTvMsgContainer:Landroid/view/View;

    .line 145
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->populateUI()V

    .line 147
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    .local v1, "syncFilter":Landroid/content/IntentFilter;
    const-string v3, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 150
    return-void

    .line 132
    .end local v1    # "syncFilter":Landroid/content/IntentFilter;
    .restart local v2    # "title":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->setHomeActionBarTitle()V

    goto :goto_0

    .line 135
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->setHomeActionBarTitle()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 154
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->close(Landroid/database/Cursor;)V

    .line 156
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onDestroy()V

    .line 157
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 161
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ARTICLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v1, 0x0

    invoke-static {p0, v0, p4, p5, v1}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 162
    return-void
.end method

.method public onMessageClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mLatestMessageId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 167
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-wide v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mLatestMessageId:J

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v3, v1}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 169
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 175
    new-instance v1, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;-><init>(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)V

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 177
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    invoke-interface {v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->isMarkedAsHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/genie_connect/android/services/ServiceManager;->isDataSyncServiceUpdating()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    new-instance v0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$2;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$2;-><init>(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)V

    .line 195
    .local v0, "updatedHandler":Landroid/os/Handler;
    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->showIndicator(Z)V

    .line 196
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "messages"

    aput-object v3, v1, v2

    const-string v2, "articles"

    aput-object v2, v1, v4

    invoke-static {p0, v1}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V

    .line 198
    .end local v0    # "updatedHandler":Landroid/os/Handler;
    :cond_0
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onResume()V

    .line 199
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 204
    .local v0, "appDataBundle":Landroid/os/Bundle;
    const-string v1, "search_target"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 206
    const/4 v1, 0x1

    return v1
.end method

.method public showIndicator(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_RIGHT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 244
    if-nez p1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 247
    :cond_0
    return-void
.end method
