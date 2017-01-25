.class Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;
.super Landroid/widget/CursorAdapter;
.source "ArticleListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArticleAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mSmallestWidth:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/database/Cursor;J)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "namespace"    # J

    .prologue
    .line 235
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 237
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 238
    iput-object p2, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;->mCursor:Landroid/database/Cursor;

    .line 239
    invoke-static {p1}, Lcom/eventgenie/android/ui/help/UIUtils;->calculateSmallestWidth(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;->mSmallestWidth:I

    .line 240
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 297
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 246
    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 248
    if-nez p1, :cond_2

    .line 250
    sget v1, Lcom/eventgenie/android/R$layout;->list_item_article_featured:I

    .line 255
    .local v1, "layout":I
    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v4

    if-eq v4, v1, :cond_3

    .line 256
    :cond_0
    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 258
    new-instance v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter$ViewHolder;-><init>()V

    .line 259
    .local v0, "holder":Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter$ViewHolder;
    sget v4, Lcom/eventgenie/android/R$id;->message_subject:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 260
    sget v4, Lcom/eventgenie/android/R$id;->message_timestamp:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter$ViewHolder;->timestamp:Landroid/widget/TextView;

    .line 261
    sget v4, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 263
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 268
    :goto_1
    iget-object v4, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;->mCursor:Landroid/database/Cursor;

    const-string v7, "name"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v6, "timestamp"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "timestamp":Ljava/lang/String;
    iget-object v4, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter$ViewHolder;->timestamp:Landroid/widget/TextView;

    sget-object v5, Lcom/genie_connect/common/utils/date/TimeFormatter;->longDayFormat:Ljava/text/DateFormat;

    invoke-static {v5, v2}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doLocalTimeFormat(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;->mCursor:Landroid/database/Cursor;

    if-nez p1, :cond_4

    const-string v4, "mainImage"

    :goto_2
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "url":Ljava/lang/String;
    iget-object v4, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    sget v5, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    iget v4, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter;->mSmallestWidth:I

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/help/UrlUtils;->alterArticleUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 279
    :cond_1
    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 280
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v4, v3, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 285
    :goto_3
    return-object p2

    .line 252
    .end local v0    # "holder":Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter$ViewHolder;
    .end local v1    # "layout":I
    .end local v2    # "timestamp":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_2
    sget v1, Lcom/eventgenie/android/R$layout;->list_item_article:I

    .restart local v1    # "layout":I
    goto/16 :goto_0

    .line 265
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter$ViewHolder;
    goto :goto_1

    .line 272
    .restart local v2    # "timestamp":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "thumbImage"

    goto :goto_2

    .line 282
    .restart local v3    # "url":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v4

    iget-object v5, v0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$ArticleAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto :goto_3
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 301
    const/4 v0, 0x0

    return-object v0
.end method
