.class public Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "RssMediaContentDetailsActivity.java"


# static fields
.field public static final RSS_ITEM_EXTRA:Ljava/lang/String; = "extra_rss_item"

.field public static final RSS_THUMBNAIL:Ljava/lang/String; = "rss_thumb"


# instance fields
.field private mFallbackThumbnail:Ljava/lang/String;

.field private mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

.field private mShareUrl:Ljava/lang/String;


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
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 63
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v9, Lcom/eventgenie/android/R$layout;->activity_details_media:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v9, v10}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    sget v9, Lcom/eventgenie/android/R$id;->web_content:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/webkit/WebView;

    .line 69
    .local v8, "wv":Landroid/webkit/WebView;
    sget v9, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 70
    .local v1, "image":Landroid/widget/ImageView;
    sget v9, Lcom/eventgenie/android/R$id;->photoOverlay:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 71
    .local v2, "imageOverlay":Landroid/widget/ImageView;
    sget v9, Lcom/eventgenie/android/R$id;->article_subject:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 72
    .local v7, "title":Landroid/widget/TextView;
    sget v9, Lcom/eventgenie/android/R$id;->article_timestamp:I

    invoke-virtual {p0, v9}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 74
    .local v6, "timestamp":Landroid/widget/TextView;
    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->setupWebView(Landroid/webkit/WebView;)V

    .line 76
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 77
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_4

    .line 79
    const-string v9, "extra_rss_item"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/eventgenie/android/utils/social/rss/RssItem;

    iput-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    .line 80
    const-string v9, "rss_thumb"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mFallbackThumbnail:Ljava/lang/String;

    .line 82
    iget-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getLink()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getLink()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 83
    iget-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getLink()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mShareUrl:Ljava/lang/String;

    .line 88
    :goto_0
    iget-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mShareUrl:Ljava/lang/String;

    invoke-static {v9}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v9

    sget-object v10, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SHARE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v9, v10, v12}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 92
    :cond_0
    iget-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getPubDate()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/SetupConfig;->getManageTimeFormat()I

    move-result v9

    iget-object v10, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v10}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getPubDate()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doRSSLocalTimeFormat(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "s":Ljava/lang/String;
    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "thumbUrl":Ljava/lang/String;
    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 99
    iget-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/social/rss/RssItem;->isContentMedia()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 100
    iget-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getContentUrl()Ljava/lang/String;

    move-result-object v5

    .line 104
    :cond_1
    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 105
    iget-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mFallbackThumbnail:Ljava/lang/String;

    .line 108
    :cond_2
    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 109
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v9

    invoke-virtual {v9, v5, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 112
    :cond_3
    iget-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/social/rss/RssItem;->isPlaybackable()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 113
    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 130
    :goto_2
    iget-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 131
    iget-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v8, v9}, Lcom/eventgenie/android/ui/help/InfopageHelper;->loadHtmlIntoWebview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 134
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "thumbUrl":Ljava/lang/String;
    :cond_4
    return-void

    .line 85
    :cond_5
    iget-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getContentUrl()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mShareUrl:Ljava/lang/String;

    goto/16 :goto_0

    .line 93
    :cond_6
    const-string v4, ""

    goto :goto_1

    .line 116
    .restart local v4    # "s":Ljava/lang/String;
    .restart local v5    # "thumbUrl":Ljava/lang/String;
    :cond_7
    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getLink()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v9}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getLink()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 119
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v9

    sget v10, Lcom/eventgenie/android/R$drawable;->ic_action_light_web_site:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget v11, Lcom/eventgenie/android/R$string;->media_view_original:I

    invoke-virtual {p0, v11}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton1(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v9

    sget-object v10, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->VIEW:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v9, v10, v12}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_2

    .line 125
    :cond_8
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v9

    invoke-virtual {v9, v13}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    goto :goto_2
.end method

.method public onCustomButton1Click(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getLink()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 138
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onResume()V

    .line 143
    return-void
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v4}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->app_name:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, "title":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mShareUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "subject":Ljava/lang/String;
    new-instance v0, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v3, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v0, p0, v3}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    .line 150
    .local v0, "manager":Lcom/eventgenie/android/utils/intents/ShareManager;
    invoke-virtual {v0, p1, v2, v1}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public onThumbnailClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Lcom/eventgenie/android/utils/social/rss/RssItem;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 158
    return-void
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 161
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->mRssItem:Lcom/eventgenie/android/utils/social/rss/RssItem;

    invoke-virtual {v1}, Lcom/eventgenie/android/utils/social/rss/RssItem;->getLink()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/RssMediaContentDetailsActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 162
    return-void
.end method
