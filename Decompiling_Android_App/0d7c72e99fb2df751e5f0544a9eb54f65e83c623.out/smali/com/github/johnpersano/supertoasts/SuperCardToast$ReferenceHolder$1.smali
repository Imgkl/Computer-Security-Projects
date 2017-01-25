.class Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder$1;
.super Ljava/lang/Object;
.source "SuperCardToast.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;


# direct methods
.method constructor <init>(Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;)V
    .locals 0

    .prologue
    .line 2176
    iput-object p1, p0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder$1;->this$0:Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 2180
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;

    invoke-direct {v0, p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 2176
    invoke-virtual {p0, p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder$1;->createFromParcel(Landroid/os/Parcel;)Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 2186
    new-array v0, p1, [Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 2176
    invoke-virtual {p0, p1}, Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder$1;->newArray(I)[Lcom/github/johnpersano/supertoasts/SuperCardToast$ReferenceHolder;

    move-result-object v0

    return-object v0
.end method
