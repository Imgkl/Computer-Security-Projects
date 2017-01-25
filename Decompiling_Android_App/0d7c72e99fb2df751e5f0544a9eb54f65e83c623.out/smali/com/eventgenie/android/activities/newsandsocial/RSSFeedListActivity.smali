.class public Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "RSSFeedListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity$SubActivityRefreshable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;
    }
.end annotation


# static fields
.field public static final FEED_DEFAULT_THUMB_EXTRA:Ljava/lang/String; = "extra_default_thumb"

.field public static final FEED_URL_EXTRA:Ljava/lang/String; = "feed_url"

.field public static final HIDE_ACTIONBAR_EXTRA:Ljava/lang/String; = "hide_actionbar"

.field public static final IS_RSSFEED_WIDGET_EXTRA:Ljava/lang/String; = "extra_rssfeed_widget"


# instance fields
.field private adapter:Landroid/widget/SimpleAdapter;

.field private hideActionBar:Z

.field private mFeedDefaultThumb:Ljava/lang/String;

.field private mFeedDescription:Ljava/lang/String;

.field private mFeedLink:Ljava/lang/String;

.field private mFeedThumbUrl:Ljava/lang/String;

.field private mFeedUrl:Ljava/lang/String;

.field private mIsRssFeedWidget:Z

.field private mIvFeedThumb:Landroid/widget/ImageView;

.field private mRssFeedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTvFeedDescription:Landroid/widget/TextView;

.field private mViewHeader:Landroid/view/View;

.field private parentActivity:Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;

.field private thumbUrl:Ljava/lang/String;

.field private tvEmpty:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    .line 75
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->hideActionBar:Z

    .line 76
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mIsRssFeedWidget:Z

    .line 328
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->tvEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mRssFeedItemList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->populateUi()V

    return-void
.end method

.method static synthetic access$400(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->hideActionBar:Z

    return v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;)Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->parentActivity:Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;

    return-object v0
.end method

.method private decideThumbnailToUse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "feedThumb"    # Ljava/lang/String;
    .param p2, "itemThumb"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedDefaultThumb:Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedDefaultThumb:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->thumbUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->thumbUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFeed(Z)V
    .locals 5
    .param p1, "forceCache"    # Z

    .prologue
    const/4 v3, 0x1

    .line 114
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 116
    .local v0, "restoredData":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 117
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->hideActionBar:Z

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->parentActivity:Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;

    invoke-virtual {v1, v3}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->showIndicator(Z)V

    .line 122
    :goto_0
    new-instance v1, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;-><init>(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;)V

    new-array v2, v3, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 127
    .end local v0    # "restoredData":Ljava/lang/Object;
    :goto_1
    return-void

    .line 120
    .restart local v0    # "restoredData":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_RIGHT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_0

    .line 124
    :cond_1
    check-cast v0, Ljava/util/List;

    .end local v0    # "restoredData":Ljava/lang/Object;
    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mRssFeedItemList:Ljava/util/List;

    .line 125
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->populateUi()V

    goto :goto_1
.end method

.method private getFeedThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedThumbUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedThumbUrl:Ljava/lang/String;

    .line 140
    :goto_0
    return-object v0

    .line 133
    :cond_0
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mIsRssFeedWidget:Z

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedDefaultThumb:Ljava/lang/String;

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedDefaultThumb:Ljava/lang/String;

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateUi()V
    .locals 10

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v3, 0x8

    .line 287
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->getFeedThumbnail()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "feedThumb":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mIsRssFeedWidget:Z

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedDescription:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedDescription:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 291
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mTvFeedDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mIvFeedThumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 301
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mViewHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 307
    :cond_0
    :goto_1
    new-instance v1, Lcom/eventgenie/android/adapters/newsandsocial/RssAdapter;

    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mRssFeedItemList:Ljava/util/List;

    sget v4, Lcom/eventgenie/android/R$layout;->list_item_rss:I

    new-array v5, v6, [Ljava/lang/String;

    const-string/jumbo v2, "title"

    aput-object v2, v5, v7

    const-string v2, "date"

    aput-object v2, v5, v8

    const-string/jumbo v2, "thumb"

    aput-object v2, v5, v9

    new-array v6, v6, [I

    sget v2, Lcom/eventgenie/android/R$id;->title:I

    aput v2, v6, v7

    sget v2, Lcom/eventgenie/android/R$id;->date:I

    aput v2, v6, v8

    sget v2, Lcom/eventgenie/android/R$id;->photo:I

    aput v2, v6, v9

    iget-boolean v7, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mIsRssFeedWidget:Z

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/eventgenie/android/adapters/newsandsocial/RssAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[IZJ)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->adapter:Landroid/widget/SimpleAdapter;

    .line 314
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 315
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 316
    return-void

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mIvFeedThumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mViewHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private shouldOpenFeedUrl()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 231
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedLink:Ljava/lang/String;

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    :goto_0
    return v0

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedLink:Ljava/lang/String;

    const-string v2, "rssgenerator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedLink:Ljava/lang/String;

    const-string v2, "rss=1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedLink:Ljava/lang/String;

    const-string v2, "rss=true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedLink:Ljava/lang/String;

    const-string v2, "-feed.yospace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    :cond_1
    const-string v1, "^ RSS: Will not open Feed link as it will redirect to the raw feed"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getListData(Lcom/eventgenie/android/utils/social/rss/RssChannel;)Ljava/util/List;
    .locals 7
    .param p1, "feed"    # Lcom/eventgenie/android/utils/social/rss/RssChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eventgenie/android/utils/social/rss/RssChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v2, "listData":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedThumbUrl:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->getDescription()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedDescription:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->getLink()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedLink:Ljava/lang/String;

    .line 154
    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedDescription:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedDescription:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gez v4, :cond_1

    .line 155
    :cond_0
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedDescription:Ljava/lang/String;

    .line 158
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 159
    invoke-virtual {p1, v0}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->get(I)Lcom/eventgenie/android/utils/social/rss/RssItem;

    move-result-object v3

    .line 161
    .local v3, "rss":Lcom/eventgenie/android/utils/social/rss/RssItem;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v1, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v4, "title"

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v4, "thumb"

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->getThumbnail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->decideThumbnailToUse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v4, "date"

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getPubDate()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v4, "object"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v0    # "i":I
    .end local v1    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "rss":Lcom/eventgenie/android/utils/social/rss/RssItem;
    :cond_2
    iput-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedThumbUrl:Ljava/lang/String;

    .line 171
    iput-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedDescription:Ljava/lang/String;

    .line 172
    iput-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedLink:Ljava/lang/String;

    .line 175
    :cond_3
    return-object v2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 180
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    sget v5, Lcom/eventgenie/android/R$layout;->generic_list_with_detailed_header:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->setContentView(I)V

    .line 183
    const v5, 0x1020004

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->tvEmpty:Landroid/widget/TextView;

    .line 184
    iget-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->tvEmpty:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    sget v5, Lcom/eventgenie/android/R$id;->list_description:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mTvFeedDescription:Landroid/widget/TextView;

    .line 186
    sget v5, Lcom/eventgenie/android/R$id;->list_thumbnail:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mIvFeedThumb:Landroid/widget/ImageView;

    .line 187
    sget v5, Lcom/eventgenie/android/R$id;->list_header:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mViewHeader:Landroid/view/View;

    .line 189
    if-eqz p1, :cond_0

    .line 190
    const-string v5, "feed_desc"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedDescription:Ljava/lang/String;

    .line 191
    const-string v5, "feed_thumb"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedThumbUrl:Ljava/lang/String;

    .line 192
    const-string v5, "feed_link"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedLink:Ljava/lang/String;

    .line 196
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->getParent()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;

    iput-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->parentActivity:Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->density:F

    .line 202
    .local v4, "scale":F
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getArtwork()Lcom/genie_connect/android/db/config/ArtworkConfig;

    move-result-object v8

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Lcom/genie_connect/android/db/config/ArtworkConfig;->getDefaultNewsThumbnailUrl(Z)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->thumbUrl:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 205
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 206
    .local v1, "b":Landroid/os/Bundle;
    const-string v5, "extra_rssfeed_widget"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mIsRssFeedWidget:Z

    .line 207
    const-string v5, "feed_url"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedUrl:Ljava/lang/String;

    .line 208
    const-string v5, "hide_actionbar"

    invoke-virtual {v1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->hideActionBar:Z

    .line 209
    const-string v5, "extra_default_thumb"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedDefaultThumb:Ljava/lang/String;

    .line 211
    iget-boolean v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->hideActionBar:Z

    if-eqz v5, :cond_2

    .line 212
    sget v5, Lcom/eventgenie/android/R$id;->action_bar:I

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "actionBar":Landroid/view/View;
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 220
    .end local v0    # "actionBar":Landroid/view/View;
    :goto_2
    invoke-direct {p0, v6}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->getFeed(Z)V

    .line 221
    return-void

    .line 197
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "scale":F
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->parentActivity:Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "scale":F
    :cond_1
    move v5, v7

    .line 202
    goto :goto_1

    .line 215
    .restart local v1    # "b":Landroid/os/Bundle;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v5

    sget v7, Lcom/eventgenie/android/R$string;->news_tab_title:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v5

    sget-object v7, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v5, v7, v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_2
.end method

.method public onHeaderClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->shouldOpenFeedUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedLink:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 228
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 245
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mRssFeedItemList:Ljava/util/List;

    .line 246
    .local v0, "d":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "object"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/utils/social/rss/RssItem;

    .line 248
    .local v1, "item":Lcom/eventgenie/android/utils/social/rss/RssItem;
    const/4 v3, 0x0

    .line 250
    .local v3, "thumburl":Ljava/lang/String;
    sget v5, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 252
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 253
    check-cast v4, Landroid/widget/ImageView;

    .end local v4    # "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 255
    .local v2, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v5, v2, Ljava/lang/String;

    if-eqz v5, :cond_0

    move-object v3, v2

    .line 256
    check-cast v3, Ljava/lang/String;

    .line 260
    .end local v2    # "tag":Ljava/lang/Object;
    :cond_0
    new-instance v5, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v5, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1, v3}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getOpenIntent(Lcom/eventgenie/android/utils/social/rss/RssItem;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 261
    return-void
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 265
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_RIGHT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 267
    new-instance v0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;-><init>(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;)V

    new-array v1, v2, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mRssFeedItemList:Ljava/util/List;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 281
    const-string v0, "feed_desc"

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 282
    const-string v0, "feed_thumb"

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedThumbUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 283
    const-string v0, "feed_link"

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedLink:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 284
    return-void
.end method

.method public refresh()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 320
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->parentActivity:Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->showIndicator(Z)V

    .line 322
    new-instance v0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;-><init>(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;)V

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_0
.end method
