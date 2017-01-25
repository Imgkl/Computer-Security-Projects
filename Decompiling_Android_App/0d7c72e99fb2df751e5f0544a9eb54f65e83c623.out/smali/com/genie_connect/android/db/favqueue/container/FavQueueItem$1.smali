.class final Lcom/genie_connect/android/db/favqueue/container/FavQueueItem$1;
.super Ljava/lang/Object;
.source "FavQueueItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;
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
        "Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 82
    new-instance v0, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 84
    new-array v0, p1, [Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/favqueue/container/FavQueueItem$1;->newArray(I)[Lcom/genie_connect/android/db/favqueue/container/FavQueueItem;

    move-result-object v0

    return-object v0
.end method
