.class public Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;
.super Ljava/lang/Object;
.source "AdRecordStore.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalNameComplete:Ljava/lang/String;

.field private final mLocalNameShort:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore$1;

    invoke-direct {v0}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore$1;-><init>()V

    sput-object v0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 33
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "records_array"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mAdRecords:Landroid/util/SparseArray;

    .line 34
    const-string v1, "local_name_complete"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mLocalNameComplete:Ljava/lang/String;

    .line 35
    const-string v1, "local_name_short"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mLocalNameShort:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "adRecords":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mAdRecords:Landroid/util/SparseArray;

    .line 46
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mAdRecords:Landroid/util/SparseArray;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;

    invoke-static {v0}, Luk/co/alt236/bluetoothlelib/util/AdRecordUtils;->getRecordDataAsString(Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mLocalNameComplete:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mAdRecords:Landroid/util/SparseArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;

    invoke-static {v0}, Luk/co/alt236/bluetoothlelib/util/AdRecordUtils;->getRecordDataAsString(Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mLocalNameShort:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static asList(Landroid/util/SparseArray;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<TC;>;)",
            "Ljava/util/Collection",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TC;>;"
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 156
    :cond_0
    return-object v0

    .line 151
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .local v0, "arrayList":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 153
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getLocalNameComplete()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mLocalNameComplete:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalNameShort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mLocalNameShort:Ljava/lang/String;

    return-object v0
.end method

.method public getRecord(I)Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;
    .locals 1
    .param p1, "record"    # I

    .prologue
    .line 87
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mAdRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;

    return-object v0
.end method

.method public getRecordDataAsString(I)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # I

    .prologue
    .line 97
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mAdRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;

    invoke-static {v0}, Luk/co/alt236/bluetoothlelib/util/AdRecordUtils;->getRecordDataAsString(Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordsAsCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mAdRecords:Landroid/util/SparseArray;

    invoke-static {v0}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->asList(Landroid/util/SparseArray;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isRecordPresent(I)Z
    .locals 1
    .param p1, "record"    # I

    .prologue
    .line 117
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mAdRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdRecordStore [mLocalNameComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mLocalNameComplete:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocalNameShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mLocalNameShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "local_name_complete"

    iget-object v2, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mLocalNameComplete:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "local_name_short"

    iget-object v2, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mLocalNameShort:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "records_array"

    iget-object v2, p0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->mAdRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 138
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 139
    return-void
.end method
