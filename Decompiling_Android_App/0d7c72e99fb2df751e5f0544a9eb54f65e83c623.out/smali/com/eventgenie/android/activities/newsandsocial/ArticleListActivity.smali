.class public Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "ArticleListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity$SubActivityRefreshable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;,
        Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;
    }
.end annotation


# static fields
.field public static final ARTICLE_GROUP_EXTRA:Ljava/lang/String; = "article_group"


# instance fields
.field private mAdapter:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;

.field private mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mArticleGroup:Ljava/lang/String;

.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mLatestArticleTime:Ljava/lang/String;

.field private mLssReceiver:Landroid/content/BroadcastReceiver;

.field private mNetPersister:Lcom/genie_connect/android/net/providers/NetworkPersister;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    .line 88
    new-instance v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$1;-><init>(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)Lcom/genie_connect/android/net/providers/NetworkPersister;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mNetPersister:Lcom/genie_connect/android/net/providers/NetworkPersister;

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mLatestArticleTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mLatestArticleTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;

    return-object v0
.end method

.method private populateUI()V
    .locals 4

    .prologue
    .line 203
    new-instance v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;J)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mAdapter:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;

    .line 205
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mAdapter:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 208
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    sget-object v4, Lcom/eventgenie/android/ui/help/UIUtils$Layout;->GENERIC_LIST:Lcom/eventgenie/android/ui/help/UIUtils$Layout;

    invoke-static {v4, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayout(Lcom/eventgenie/android/ui/help/UIUtils$Layout;Lcom/eventgenie/android/activities/base/GenieActivity;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->setContentView(I)V

    .line 106
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->news_blog_title:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v4

    sget-object v5, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 109
    new-instance v4, Lcom/genie_connect/android/net/providers/NetworkPersister;

    invoke-direct {v4, p0}, Lcom/genie_connect/android/net/providers/NetworkPersister;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mNetPersister:Lcom/genie_connect/android/net/providers/NetworkPersister;

    .line 111
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 113
    .local v1, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 114
    const-string v4, "article_group"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mArticleGroup:Ljava/lang/String;

    .line 115
    const-string v4, "hide_advert"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 120
    .local v2, "showAdvert":Z
    :goto_0
    sget v4, Lcom/eventgenie/android/R$id;->action_bar:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "actionBar":Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 124
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 126
    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mArticleGroup:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 127
    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getArticles()Lcom/genie_connect/android/db/access/DbArticles;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/DbArticles;->getAll()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 132
    :goto_1
    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v4}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 133
    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v5, "modifiedDate"

    invoke-interface {v4, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertFromSqliteToJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mLatestArticleTime:Ljava/lang/String;

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->populateUI()V

    .line 147
    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->showAdvert()V

    .line 151
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v3, "syncFilter":Landroid/content/IntentFilter;
    const-string v4, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v4, "com.eventgenie.android.BROADCAST_SERVER_CHECK_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 155
    return-void

    .line 117
    .end local v0    # "actionBar":Landroid/view/View;
    .end local v2    # "showAdvert":Z
    .end local v3    # "syncFilter":Landroid/content/IntentFilter;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "showAdvert":Z
    goto :goto_0

    .line 129
    .restart local v0    # "actionBar":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getArticles()Lcom/genie_connect/android/db/access/DbArticles;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mArticleGroup:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/db/access/DbArticles;->getArticlesForGroup(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 166
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->close(Landroid/database/Cursor;)V

    .line 168
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onDestroy()V

    .line 169
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 223
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ARTICLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v2, 0x0

    invoke-static {p0, v1, p4, p5, v2}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    .line 224
    .local v0, "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 225
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onResume()V

    .line 162
    return-void
.end method

.method public refresh()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 212
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;

    .line 214
    .local v0, "parentActivity":Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;
    invoke-virtual {v0, v2}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->showIndicator(Z)V

    .line 215
    new-instance v1, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;-><init>(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)V

    new-array v2, v2, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 219
    .end local v0    # "parentActivity":Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method
