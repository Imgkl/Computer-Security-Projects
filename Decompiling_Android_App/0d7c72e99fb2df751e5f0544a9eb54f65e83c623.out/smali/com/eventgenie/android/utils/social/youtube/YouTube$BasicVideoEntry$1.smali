.class final Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry$1;
.super Ljava/lang/Object;
.source "YouTube.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 507
    new-instance v0, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;-><init>(Landroid/os/Parcel;Lcom/eventgenie/android/utils/social/youtube/YouTube$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 512
    new-array v0, p1, [Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry$1;->newArray(I)[Lcom/eventgenie/android/utils/social/youtube/YouTube$BasicVideoEntry;

    move-result-object v0

    return-object v0
.end method