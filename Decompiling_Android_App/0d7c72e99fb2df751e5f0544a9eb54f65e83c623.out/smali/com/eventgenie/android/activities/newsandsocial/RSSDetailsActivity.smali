.class public Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "RSSDetailsActivity.java"


# static fields
.field public static final RSS_ITEM_EXTRA:Ljava/lang/String; = "rss_item"

.field public static final RSS_THUMBNAIL:Ljava/lang/String; = "rss_thumb"


# instance fields
.field private mArticleTitle:Ljava/lang/String;

.field private mItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

.field private mIvThumbnail:Landroid/widget/ImageView;

.field private mShareUrl:Ljava/lang/String;

.field private mThumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    .line 66
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    sget v6, Lcom/eventgenie/android/R$layout;->activity_details_rss:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v6, v7}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    sget v6, Lcom/eventgenie/android/R$id;->web_content:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    .line 72
    .local v5, "wv":Landroid/webkit/WebView;
    sget v6, Lcom/eventgenie/android/R$id;->article_subject:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 73
    .local v4, "title":Landroid/widget/TextView;
    sget v6, Lcom/eventgenie/android/R$id;->article_timestamp:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 74
    .local v3, "timestamp":Landroid/widget/TextView;
    sget v6, Lcom/eventgenie/android/R$id;->article_thumbnail:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mIvThumbnail:Landroid/widget/ImageView;

    .line 76
    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->setupWebView(Landroid/webkit/WebView;)V

    .line 78
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 80
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 81
    const-string v6, "rss_item"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/eventgenie/android/utils/social/rss/RssItem;

    iput-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    .line 82
    const-string v6, "rss_thumb"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mThumbnailUrl:Ljava/lang/String;

    .line 83
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mArticleTitle:Ljava/lang/String;

    .line 84
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getLink()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mShareUrl:Ljava/lang/String;

    .line 86
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mArticleTitle:Ljava/lang/String;

    invoke-static {v6}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 87
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mArticleTitle:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_0
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getPubDate()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/SetupConfig;->getManageTimeFormat()I

    move-result v6

    iget-object v7, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v7}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getPubDate()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doRSSLocalTimeFormat(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "s":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getContent()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 96
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/eventgenie/android/ui/help/InfopageHelper;->loadHtmlIntoWebview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 100
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mThumbnailUrl:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v9, :cond_5

    .line 101
    :cond_1
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mIvThumbnail:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    :goto_2
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mShareUrl:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mShareUrl:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v6

    sget-object v7, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SHARE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v6, v7, v9}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 108
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v6

    sget-object v7, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->VIEW:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v6, v7, v9}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 109
    sget v6, Lcom/eventgenie/android/R$id;->segment_viewOriginal:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_2
    return-void

    .line 89
    :cond_3
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 92
    :cond_4
    const-string v2, ""

    goto :goto_1

    .line 103
    :cond_5
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mThumbnailUrl:Ljava/lang/String;

    iget-object v8, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mIvThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v6, v7, v8}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mArticleTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "title":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mShareUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "subject":Ljava/lang/String;
    new-instance v0, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v3, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v0, p0, v3}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    .line 118
    .local v0, "manager":Lcom/eventgenie/android/utils/intents/ShareManager;
    invoke-virtual {v0, p1, v2, v1}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->mShareUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/RSSDetailsActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 126
    return-void
.end method
