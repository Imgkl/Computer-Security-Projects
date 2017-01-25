.class public Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
.super Ljava/lang/Object;
.source "Flickr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/social/flickr/Flickr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhotoList"
.end annotation


# instance fields
.field private mPage:I

.field private mPageCount:I

.field private mPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1102(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .param p1, "x1"    # I

    .prologue
    .line 1054
    iput p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->mPage:I

    return p1
.end method

.method static synthetic access$1202(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;I)I
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .param p1, "x1"    # I

    .prologue
    .line 1054
    iput p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->mPageCount:I

    return p1
.end method

.method static synthetic access$1302(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->mPhotos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;
    .param p1, "x1"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;

    .prologue
    .line 1054
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->add(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;)V

    return-void
.end method

.method private add(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;)V
    .locals 1
    .param p1, "photo"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->mPhotos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    return-void
.end method


# virtual methods
.method public get(I)Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->mPhotos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photo;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->mPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 1091
    iget v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->mPage:I

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 1100
    iget v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->mPageCount:I

    return v0
.end method

.method public hasPhotos()Z
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->mPhotos:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoList;->mPhotos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    :cond_0
    const/4 v0, 0x0

    .line 1107
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
