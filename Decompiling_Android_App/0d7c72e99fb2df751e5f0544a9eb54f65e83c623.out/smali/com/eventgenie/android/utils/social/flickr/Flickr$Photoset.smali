.class public Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;
.super Ljava/lang/Object;
.source "Flickr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/social/flickr/Flickr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Photoset"
.end annotation


# instance fields
.field private mFarm:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mPhotoCount:I

.field private mPrimaryId:Ljava/lang/String;

.field private mSecret:Ljava/lang/String;

.field private mServer:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2202(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;I)I
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;
    .param p1, "x1"    # I

    .prologue
    .line 1112
    iput p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mPhotoCount:I

    return p1
.end method

.method static synthetic access$2402(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mPrimaryId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mSecret:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mServer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mFarm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mTitle:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 1126
    iget v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mPhotoCount:I

    return v0
.end method

.method public getPrimaryUrl(Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;)Ljava/lang/String;
    .locals 4
    .param p1, "photoSize"    # Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;

    .prologue
    .line 1129
    const-string v0, "http://farm%s.static.flickr.com/%s/%s_%s%s.jpg"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mFarm:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mServer:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mPrimaryId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mSecret:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/flickr/Flickr$PhotoSize;->size()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mId:Ljava/lang/String;

    .line 1136
    return-void
.end method

.method public setPhotoCount(I)V
    .locals 0
    .param p1, "photoCount"    # I

    .prologue
    .line 1138
    iput p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mPhotoCount:I

    .line 1139
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/flickr/Flickr$Photoset;->mTitle:Ljava/lang/String;

    .line 1143
    return-void
.end method
