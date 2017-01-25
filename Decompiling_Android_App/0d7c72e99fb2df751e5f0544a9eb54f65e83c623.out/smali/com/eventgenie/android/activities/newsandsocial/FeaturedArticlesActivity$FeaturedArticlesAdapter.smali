.class Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;
.super Landroid/widget/BaseAdapter;
.source "FeaturedArticlesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeaturedArticlesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mSmallestWidth:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Luk/co/alt236/easycursor/EasyCursor;J)V
    .locals 1
    .param p1, "a"    # Landroid/app/Activity;
    .param p2, "c"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p3, "namespace"    # J

    .prologue
    .line 255
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 256
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 257
    iput-object p2, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 258
    invoke-static {p1}, Lcom/eventgenie/android/ui/help/UIUtils;->calculateSmallestWidth(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mSmallestWidth:I

    .line 259
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v0, p1}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 274
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v2, "id"

    invoke-interface {v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Luk/co/alt236/easycursor/EasyCursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 281
    sget v2, Lcom/eventgenie/android/R$layout;->list_item_article_featured:I

    .line 283
    .local v2, "layout":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v2, :cond_2

    .line 284
    :cond_0
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 286
    new-instance v0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter$ViewHolder;-><init>()V

    .line 287
    .local v0, "holder":Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter$ViewHolder;
    sget v6, Lcom/eventgenie/android/R$id;->message_subject:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 288
    sget v6, Lcom/eventgenie/android/R$id;->message_timestamp:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter$ViewHolder;->timestamp:Landroid/widget/TextView;

    .line 289
    sget v6, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 291
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 297
    :goto_0
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v6, p1}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 298
    iget-object v6, v0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v8, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v9, "name"

    invoke-interface {v8, v9}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v7, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string/jumbo v8, "timestamp"

    invoke-interface {v7, v8}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, "timestamp":Ljava/lang/String;
    iget-object v6, v0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter$ViewHolder;->timestamp:Landroid/widget/TextView;

    sget-object v7, Lcom/genie_connect/common/utils/date/TimeFormatter;->longDayFormat:Ljava/text/DateFormat;

    invoke-static {v7, v5}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doLocalTimeFormat(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v7, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string/jumbo v8, "thumbImage"

    invoke-interface {v7, v8}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "thumbnailUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    iget-object v7, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v8, "mainImage"

    invoke-interface {v7, v8}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Luk/co/alt236/easycursor/EasyCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, "mainImageUrl":Ljava/lang/String;
    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 307
    move-object v1, v3

    .line 312
    .local v1, "imageUrlToUse":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 313
    iget v6, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;->mSmallestWidth:I

    invoke-static {v1, v6}, Lcom/eventgenie/android/utils/help/UrlUtils;->alterArticleUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 316
    :cond_1
    iget-object v6, v0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    sget v7, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 318
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 319
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, v0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v6, v1, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 324
    :goto_2
    return-object p2

    .line 293
    .end local v0    # "holder":Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter$ViewHolder;
    .end local v1    # "imageUrlToUse":Ljava/lang/String;
    .end local v3    # "mainImageUrl":Ljava/lang/String;
    .end local v4    # "thumbnailUrl":Ljava/lang/String;
    .end local v5    # "timestamp":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter$ViewHolder;
    goto :goto_0

    .line 309
    .restart local v3    # "mainImageUrl":Ljava/lang/String;
    .restart local v4    # "thumbnailUrl":Ljava/lang/String;
    .restart local v5    # "timestamp":Ljava/lang/String;
    :cond_3
    move-object v1, v4

    .restart local v1    # "imageUrlToUse":Ljava/lang/String;
    goto :goto_1

    .line 321
    :cond_4
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, v0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto :goto_2
.end method
