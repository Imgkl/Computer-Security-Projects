.class public Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;
.super Ljava/lang/Object;
.source "YouTube.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/social/youtube/YouTube;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoList"
.end annotation


# instance fields
.field private mItems:I

.field private mNextPageToken:Ljava/lang/String;

.field private mPrevPageToken:Ljava/lang/String;

.field private mStart:I

.field private mTotal:I

.field private mVideos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->mVideos:Ljava/util/List;

    .line 684
    return-void
.end method

.method static synthetic access$302(Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->mPrevPageToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->mNextPageToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;
    .param p1, "x1"    # Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;

    .prologue
    .line 674
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->add(Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;)V

    return-void
.end method

.method private add(Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;)V
    .locals 1
    .param p1, "vid"    # Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;

    .prologue
    .line 687
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->mVideos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    return-void
.end method


# virtual methods
.method public get(I)Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 691
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->mVideos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->mVideos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 696
    const/4 v0, 0x0

    .line 698
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->mVideos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItems()I
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->mItems:I

    return v0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->mNextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->mPrevPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->mStart:I

    return v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->mTotal:I

    return v0
.end method

.method public hasVideos()Z
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->mVideos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->mVideos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    :cond_0
    const/4 v0, 0x0

    .line 726
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
