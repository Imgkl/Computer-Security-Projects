.class Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder$1;
.super Ljava/lang/Object;
.source "SuperActivityToast.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;


# direct methods
.method constructor <init>(Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;)V
    .locals 0

    .prologue
    .line 1678
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder$1;->this$0:Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1682
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;

    invoke-direct {v0, p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1678
    invoke-virtual {p0, p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder$1;->createFromParcel(Landroid/os/Parcel;)Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1688
    new-array v0, p1, [Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1678
    invoke-virtual {p0, p1}, Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder$1;->newArray(I)[Lcom/github/johnpersano/supertoasts/SuperActivityToast$ReferenceHolder;

    move-result-object v0

    return-object v0
.end method
