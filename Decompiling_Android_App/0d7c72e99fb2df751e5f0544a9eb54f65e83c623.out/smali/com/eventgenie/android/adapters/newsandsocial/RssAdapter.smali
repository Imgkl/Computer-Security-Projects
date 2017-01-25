.class public Lcom/eventgenie/android/adapters/newsandsocial/RssAdapter;
.super Landroid/widget/SimpleAdapter;
.source "RssAdapter.java"


# instance fields
.field private mAppConfig:Lcom/genie_connect/android/db/config/AppConfig;

.field private mContext:Landroid/content/Context;

.field private final mIsRssFeedWidget:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[IZJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "rssFeedWidget"    # Z
    .param p7, "namespace"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I[",
            "Ljava/lang/String;",
            "[IZJ)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 59
    iput-boolean p6, p0, Lcom/eventgenie/android/adapters/newsandsocial/RssAdapter;->mIsRssFeedWidget:Z

    .line 60
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/RssAdapter;->mAppConfig:Lcom/genie_connect/android/db/config/AppConfig;

    .line 61
    iput-object p1, p0, Lcom/eventgenie/android/adapters/newsandsocial/RssAdapter;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method


# virtual methods
.method public isRssFeedWidget()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/RssAdapter;->mIsRssFeedWidget:Z

    return v0
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    if-ne v0, v1, :cond_1

    .line 72
    sget v0, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    invoke-static {p2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/SimpleAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->date:I

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/RssAdapter;->mAppConfig:Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->getManageTimeFormat()I

    move-result v0

    iget-object v1, p0, Lcom/eventgenie/android/adapters/newsandsocial/RssAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, p2, v1}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doRSSLocalTimeFormat(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->title:I

    if-ne v0, v1, :cond_1

    .line 89
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/SimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method
