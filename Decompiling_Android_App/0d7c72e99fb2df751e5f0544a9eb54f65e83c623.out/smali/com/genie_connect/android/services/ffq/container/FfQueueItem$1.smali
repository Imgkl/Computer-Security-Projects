.class final Lcom/genie_connect/android/services/ffq/container/FfQueueItem$1;
.super Ljava/lang/Object;
.source "FfQueueItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/services/ffq/container/FfQueueItem;
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
        "Lcom/genie_connect/android/services/ffq/container/FfQueueItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/genie_connect/android/services/ffq/container/FfQueueItem;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 93
    new-instance v0, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/genie_connect/android/services/ffq/container/FfQueueItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 95
    new-array v0, p1, [Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/services/ffq/container/FfQueueItem$1;->newArray(I)[Lcom/genie_connect/android/services/ffq/container/FfQueueItem;

    move-result-object v0

    return-object v0
.end method
