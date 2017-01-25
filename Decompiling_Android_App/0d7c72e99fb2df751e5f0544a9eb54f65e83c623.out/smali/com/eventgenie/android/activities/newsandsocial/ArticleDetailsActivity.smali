.class public Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "ArticleDetailsActivity.java"


# instance fields
.field private articleID:J

.field private mArticleTitle:Ljava/lang/String;

.field private mArticlesCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mShareUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super/range {p0 .. p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget v13, Lcom/eventgenie/android/R$layout;->activity_details_article:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->setContentView(I)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v13

    const-string v14, ""

    invoke-interface {v13, v14}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    sget v13, Lcom/eventgenie/android/R$id;->web_content:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/webkit/WebView;

    .line 71
    .local v12, "wv":Landroid/webkit/WebView;
    sget v13, Lcom/eventgenie/android/R$id;->photo:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 72
    .local v6, "image":Landroid/widget/ImageView;
    sget v13, Lcom/eventgenie/android/R$id;->article_subject:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 73
    .local v10, "title":Landroid/widget/TextView;
    sget v13, Lcom/eventgenie/android/R$id;->article_timestamp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 74
    .local v9, "timestamp":Landroid/widget/TextView;
    sget v13, Lcom/eventgenie/android/R$id;->article_author:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 76
    .local v3, "author":Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->setupWebView(Landroid/webkit/WebView;)V

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 79
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 80
    .local v4, "b":Landroid/os/Bundle;
    if-eqz v4, :cond_3

    .line 81
    const-string v13, "entity_id"

    const-wide/16 v14, -0x1

    invoke-virtual {v4, v13, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->articleID:J

    .line 83
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->articleID:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_3

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 86
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v13}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getArticles()Lcom/genie_connect/android/db/access/DbArticles;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->articleID:J

    invoke-virtual {v13, v14, v15}, Lcom/genie_connect/android/db/access/DbArticles;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticlesCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 88
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticlesCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v13}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v13

    if-lez v13, :cond_2

    .line 90
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticlesCursor:Luk/co/alt236/easycursor/EasyCursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticlesCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v15, "shareUrl"

    invoke-interface {v14, v15}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mShareUrl:Ljava/lang/String;

    .line 92
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mShareUrl:Ljava/lang/String;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mShareUrl:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v13

    sget-object v14, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SHARE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v13

    sget-object v14, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->VIEW:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 97
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticlesCursor:Luk/co/alt236/easycursor/EasyCursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticlesCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v15, "mainImage"

    invoke-interface {v14, v15}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 99
    .local v11, "url":Ljava/lang/String;
    invoke-static {v11}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 100
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v13

    invoke-virtual {v13, v11, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 103
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticlesCursor:Luk/co/alt236/easycursor/EasyCursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticlesCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v15, "name"

    invoke-interface {v14, v15}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticleTitle:Ljava/lang/String;

    .line 104
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticleTitle:Ljava/lang/String;

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticlesCursor:Luk/co/alt236/easycursor/EasyCursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticlesCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string/jumbo v15, "timestamp"

    invoke-interface {v14, v15}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "s":Ljava/lang/String;
    sget-object v13, Lcom/genie_connect/common/utils/date/TimeFormatter;->longDayFormat:Ljava/text/DateFormat;

    invoke-static {v13, v8}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doLocalTimeFormat(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticlesCursor:Luk/co/alt236/easycursor/EasyCursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticlesCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v15, "author"

    invoke-interface {v14, v15}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v13, v14}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "auth":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 110
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticlesCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v14, "html"

    invoke-interface {v13, v14}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 116
    .local v5, "html":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v12, v5}, Lcom/eventgenie/android/ui/help/InfopageHelper;->loadHtmlIntoWebview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 118
    .end local v2    # "auth":Ljava/lang/String;
    .end local v5    # "html":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    .end local v11    # "url":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticlesCursor:Luk/co/alt236/easycursor/EasyCursor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->close(Landroid/database/Cursor;)V

    .line 121
    :cond_3
    return-void

    .line 112
    .restart local v2    # "auth":Ljava/lang/String;
    .restart local v8    # "s":Ljava/lang/String;
    .restart local v11    # "url":Ljava/lang/String;
    :cond_4
    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mArticleTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getEventNameShort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "title":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mShareUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "subject":Ljava/lang/String;
    new-instance v1, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v0, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v1, p0, v0}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    .line 128
    .local v1, "manager":Lcom/eventgenie/android/utils/intents/ShareManager;
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ARTICLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->articleID:J

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 134
    return-void
.end method

.method public onViewClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->mShareUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleDetailsActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 138
    return-void
.end method
