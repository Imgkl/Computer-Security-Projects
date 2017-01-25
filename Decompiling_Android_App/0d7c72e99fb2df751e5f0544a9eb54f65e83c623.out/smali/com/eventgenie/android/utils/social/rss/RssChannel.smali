.class public Lcom/eventgenie/android/utils/social/rss/RssChannel;
.super Ljava/lang/Object;
.source "RssChannel.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/social/rss/RssItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLink:Ljava/lang/String;

.field private mThumbnailUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/eventgenie/android/utils/social/rss/RssItem;)V
    .locals 1
    .param p1, "item"    # Lcom/eventgenie/android/utils/social/rss/RssItem;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssChannel;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public get(I)Lcom/eventgenie/android/utils/social/rss/RssItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssChannel;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/social/rss/RssItem;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/rss/RssChannel;->hasItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssChannel;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssChannel;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssChannel;->mLink:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssChannel;->mThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssChannel;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hasItems()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssChannel;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssChannel;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/rss/RssChannel;->mItems:Ljava/util/List;

    .line 84
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDescription"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/rss/RssChannel;->mDescription:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLink"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/rss/RssChannel;->mLink:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/rss/RssChannel;->mThumbnailUrl:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitle"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/rss/RssChannel;->mTitle:Ljava/lang/String;

    .line 100
    return-void
.end method
