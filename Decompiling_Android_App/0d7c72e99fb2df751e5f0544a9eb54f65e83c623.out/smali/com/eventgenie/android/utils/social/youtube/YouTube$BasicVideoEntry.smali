.class public Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;
.super Ljava/lang/Object;
.source "YouTube.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/social/youtube/YouTube;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasicVideoEntry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mDate:Ljava/lang/String;

.field protected mDescription:Ljava/lang/String;

.field protected mThumbnailLarge:Ljava/lang/String;

.field protected mThumbnailSmall:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;

.field protected mVideoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 504
    new-instance v0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry$1;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry$1;-><init>()V

    sput-object v0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mDate:Ljava/lang/String;

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mTitle:Ljava/lang/String;

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mDescription:Ljava/lang/String;

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mVideoId:Ljava/lang/String;

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mThumbnailSmall:Ljava/lang/String;

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mThumbnailLarge:Ljava/lang/String;

    .line 526
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/eventgenie/android/utils/social/youtube/YouTube$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/eventgenie/android/utils/social/youtube/YouTube$1;

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/utils/social/youtube/YouTube$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/utils/social/youtube/YouTube$1;

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailLarge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mThumbnailLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mThumbnailSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 558
    const-string v0, "https://www.youtube.com/watch?v=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->getVideoId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mVideoId:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDate"    # Ljava/lang/String;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mDate:Ljava/lang/String;

    .line 563
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDescription"    # Ljava/lang/String;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mDescription:Ljava/lang/String;

    .line 567
    return-void
.end method

.method public setThumbnailLarge(Ljava/lang/String;)V
    .locals 0
    .param p1, "mThumbnailLarge"    # Ljava/lang/String;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mThumbnailLarge:Ljava/lang/String;

    .line 571
    return-void
.end method

.method public setThumbnailSmall(Ljava/lang/String;)V
    .locals 0
    .param p1, "mThumbnailSmall"    # Ljava/lang/String;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mThumbnailSmall:Ljava/lang/String;

    .line 575
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTitle"    # Ljava/lang/String;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mTitle:Ljava/lang/String;

    .line 579
    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUrl"    # Ljava/lang/String;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mVideoId:Ljava/lang/String;

    .line 583
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 587
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mVideoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mThumbnailSmall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;->mThumbnailLarge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    return-void
.end method
