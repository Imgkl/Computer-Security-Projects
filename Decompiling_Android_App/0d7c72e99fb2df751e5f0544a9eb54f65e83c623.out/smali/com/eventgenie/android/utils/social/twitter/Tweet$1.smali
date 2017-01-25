.class final Lcom/eventgenie/android/utils/social/twitter/Tweet$1;
.super Ljava/lang/Object;
.source "Tweet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/social/twitter/Tweet;
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
        "Lcom/eventgenie/android/utils/social/twitter/Tweet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/eventgenie/android/utils/social/twitter/Tweet;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 117
    new-instance v0, Lcom/eventgenie/android/utils/social/twitter/Tweet;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/eventgenie/android/utils/social/twitter/Tweet;-><init>(Landroid/os/Parcel;Lcom/eventgenie/android/utils/social/twitter/Tweet$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/social/twitter/Tweet$1;->createFromParcel(Landroid/os/Parcel;)Lcom/eventgenie/android/utils/social/twitter/Tweet;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/eventgenie/android/utils/social/twitter/Tweet;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 122
    new-array v0, p1, [Lcom/eventgenie/android/utils/social/twitter/Tweet;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/social/twitter/Tweet$1;->newArray(I)[Lcom/eventgenie/android/utils/social/twitter/Tweet;

    move-result-object v0

    return-object v0
.end method
