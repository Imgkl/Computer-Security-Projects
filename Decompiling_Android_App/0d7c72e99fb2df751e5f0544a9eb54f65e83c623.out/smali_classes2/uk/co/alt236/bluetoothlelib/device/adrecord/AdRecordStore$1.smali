.class final Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore$1;
.super Ljava/lang/Object;
.source "AdRecordStore.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;
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
        "Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore$1;->createFromParcel(Landroid/os/Parcel;)Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 23
    new-instance v0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    invoke-direct {v0, p1}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore$1;->newArray(I)[Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 27
    new-array v0, p1, [Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    return-object v0
.end method
