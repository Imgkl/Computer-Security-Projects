.class public Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
.super Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;
.source "YouTube.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/social/youtube/YouTube;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoEntry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDurationSeconds:I

.field private mFavs:I

.field private mPlays:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 603
    new-instance v0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry$1;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry$1;-><init>()V

    sput-object v0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;-><init>(Lcom/eventgenie/android/utils/social/youtube/YouTube$1;)V

    .line 616
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 618
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;-><init>(Lcom/eventgenie/android/utils/social/youtube/YouTube$1;)V

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mPlays:I

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mFavs:I

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mDate:Ljava/lang/String;

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mTitle:Ljava/lang/String;

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mDescription:Ljava/lang/String;

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mVideoId:Ljava/lang/String;

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mThumbnailSmall:Ljava/lang/String;

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mThumbnailLarge:Ljava/lang/String;

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mDurationSeconds:I

    .line 628
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/eventgenie/android/utils/social/youtube/YouTube$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/eventgenie/android/utils/social/youtube/YouTube$1;

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/utils/social/youtube/YouTube$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/utils/social/youtube/YouTube$1;

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public getDurationSeconds()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mDurationSeconds:I

    return v0
.end method

.method public getFavs()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mFavs:I

    return v0
.end method

.method public getPlays()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mPlays:I

    return v0
.end method

.method public setDurationSeconds(I)V
    .locals 0
    .param p1, "mDurationSeconds"    # I

    .prologue
    .line 648
    iput p1, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mDurationSeconds:I

    .line 649
    return-void
.end method

.method public setFavs(I)V
    .locals 0
    .param p1, "mFavs"    # I

    .prologue
    .line 652
    iput p1, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mFavs:I

    .line 653
    return-void
.end method

.method public setPlays(I)V
    .locals 0
    .param p1, "mPlays"    # I

    .prologue
    .line 656
    iput p1, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mPlays:I

    .line 657
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 661
    iget v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mPlays:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 662
    iget v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mFavs:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mVideoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mThumbnailSmall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mThumbnailLarge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 669
    iget v0, p0, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->mDurationSeconds:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    return-void
.end method
