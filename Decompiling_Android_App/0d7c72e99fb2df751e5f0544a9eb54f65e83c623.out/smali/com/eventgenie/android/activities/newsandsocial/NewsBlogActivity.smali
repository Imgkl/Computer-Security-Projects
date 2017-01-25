.class public Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;
.super Lcom/eventgenie/android/activities/base/GenieTabActivity;
.source "NewsBlogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity$SubActivityRefreshable;
    }
.end annotation


# static fields
.field public static final EXTRA_IS_RSSFEED_WIDGET:Ljava/lang/String; = "extra_rssfeed_widget"


# instance fields
.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mFeedsCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mIsRssFeedWidget:Z

.field private mNewsFeeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;",
            ">;"
        }
    .end annotation
.end field

.field private mRssFeeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;-><init>()V

    .line 165
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 63
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget v6, Lcom/eventgenie/android/R$layout;->generic_tabs_top_scrollable:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v6

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getNews()Lcom/genie_connect/android/db/config/widgets/NewsConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/widgets/NewsConfig;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v6

    sget-object v7, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v6, v7, v8}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 70
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 71
    .local v4, "myBundle":Landroid/os/Bundle;
    if-eqz v4, :cond_0

    .line 72
    const-string v6, "extra_rssfeed_widget"

    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->mIsRssFeedWidget:Z

    .line 73
    const-string v6, "hide_advert"

    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->showAdvert()V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 80
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v5

    .line 81
    .local v5, "tabHost":Landroid/widget/TabHost;
    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-boolean v6, p0, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->mIsRssFeedWidget:Z

    if-eqz v6, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getRssFeed()Lcom/genie_connect/android/db/config/widgets/RssFeedConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig;->getFeeds()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->mRssFeeds:Ljava/util/List;

    .line 89
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->mRssFeeds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;

    .line 90
    .local v1, "feed":Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->getUrl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v6

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v3, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->addInheritedExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 96
    const-string v6, "feed_url"

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v6, "extra_default_thumb"

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->getThumbnail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v6, "hide_actionbar"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    const-string v6, "extra_rssfeed_widget"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 101
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->buildTopScrollableNarrowIndicator(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    .line 107
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "feed":Lcom/genie_connect/android/db/config/widgets/RssFeedConfig$RssFeed;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getNews()Lcom/genie_connect/android/db/config/widgets/NewsConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/widgets/NewsConfig;->getFeeds()Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->mNewsFeeds:Ljava/util/List;

    .line 109
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->mNewsFeeds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;

    .line 110
    .local v1, "feed":Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->isRss()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 111
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->getRssUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 112
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    .restart local v0    # "b":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->addInheritedExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 115
    const-string v6, "feed_url"

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->getRssUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v6, "hide_actionbar"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 118
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->buildTopScrollableNarrowIndicator(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_1

    .line 124
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v6}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getArticles()Lcom/genie_connect/android/db/access/DbArticles;

    move-result-object v6

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->getArticleGroupName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/genie_connect/android/db/access/DbArticles;->getArticleGroup(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->mFeedsCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 125
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->mFeedsCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v6}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->mFeedsCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v7, "isDashboardFeaturedOnly"

    invoke-interface {v6, v7}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 126
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .restart local v3    # "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    .restart local v0    # "b":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->addInheritedExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 129
    const-string v6, "article_group"

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->getArticleGroupName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v6, "hide_advert"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 132
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->buildTopScrollableNarrowIndicator(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_1

    .line 142
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "feed":Lcom/genie_connect/android/db/config/widgets/NewsConfig$NewsFeed;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v6

    if-ne v6, v8, :cond_6

    .line 143
    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 145
    :cond_6
    return-void
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity$SubActivityRefreshable;

    .line 151
    .local v0, "activity":Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity$SubActivityRefreshable;
    :try_start_0
    invoke-interface {v0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity$SubActivityRefreshable;->refresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v0    # "activity":Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity$SubActivityRefreshable;
    :goto_0
    return-void

    .line 152
    .restart local v0    # "activity":Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity$SubActivityRefreshable;
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ NEWS: Error refreshing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    .end local v0    # "activity":Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity$SubActivityRefreshable;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public showIndicator(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_RIGHT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, p1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 163
    return-void
.end method
