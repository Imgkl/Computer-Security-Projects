.class public Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;
.super Ljava/lang/Object;
.source "BluetoothLeDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_INVALIDATION_THRESHOLD:J = 0x2710L

.field protected static final MAX_RSSI_LOG_SIZE:I = 0xa

.field private static final PARCEL_EXTRA_BLUETOOTH_DEVICE:Ljava/lang/String; = "bluetooth_device"

.field private static final PARCEL_EXTRA_CURRENT_RSSI:Ljava/lang/String; = "current_rssi"

.field private static final PARCEL_EXTRA_CURRENT_TIMESTAMP:Ljava/lang/String; = "current_timestamp"

.field private static final PARCEL_EXTRA_DEVICE_RSSI_LOG:Ljava/lang/String; = "device_rssi_log"

.field private static final PARCEL_EXTRA_DEVICE_SCANRECORD:Ljava/lang/String; = "device_scanrecord"

.field private static final PARCEL_EXTRA_DEVICE_SCANRECORD_STORE:Ljava/lang/String; = "device_scanrecord_store"

.field private static final PARCEL_EXTRA_FIRST_RSSI:Ljava/lang/String; = "device_first_rssi"

.field private static final PARCEL_EXTRA_FIRST_TIMESTAMP:Ljava/lang/String; = "first_timestamp"


# instance fields
.field private mCurrentRssi:I

.field private mCurrentTimestamp:J

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mFirstRssi:I

.field private final mFirstTimestamp:J

.field private final mRecordStore:Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

.field private final mRssiLog:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mScanRecord:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice$1;

    invoke-direct {v0}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice$1;-><init>()V

    sput-object v0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;I[BJ)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B
    .param p4, "timestamp"    # J

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 70
    iput p2, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstRssi:I

    .line 71
    iput-wide p4, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstTimestamp:J

    .line 72
    new-instance v0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    invoke-static {p3}, Luk/co/alt236/bluetoothlelib/util/AdRecordUtils;->parseScanRecordAsSparseArray([B)Landroid/util/SparseArray;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;-><init>(Landroid/util/SparseArray;)V

    iput-object v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRecordStore:Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    .line 73
    iput-object p3, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mScanRecord:[B

    .line 74
    new-instance v0, Luk/co/alt236/bluetoothlelib/util/LimitedLinkHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Luk/co/alt236/bluetoothlelib/util/LimitedLinkHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRssiLog:Ljava/util/Map;

    .line 76
    invoke-virtual {p0, p4, p5, p2}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->updateRssiReading(JI)V

    .line 77
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 105
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "current_rssi"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentRssi:I

    .line 106
    const-string v1, "current_timestamp"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentTimestamp:J

    .line 107
    const-string v1, "bluetooth_device"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 108
    const-string v1, "device_first_rssi"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstRssi:I

    .line 109
    const-string v1, "first_timestamp"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstTimestamp:J

    .line 110
    const-string v1, "device_scanrecord_store"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    iput-object v1, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRecordStore:Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    .line 111
    const-string v1, "device_rssi_log"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRssiLog:Ljava/util/Map;

    .line 113
    const-string v1, "device_scanrecord"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mScanRecord:[B

    .line 114
    return-void
.end method

.method public constructor <init>(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)V
    .locals 2
    .param p1, "device"    # Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getRssi()I

    move-result v0

    iput v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentRssi:I

    .line 86
    invoke-virtual {p1}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentTimestamp:J

    .line 87
    invoke-virtual {p1}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 88
    invoke-virtual {p1}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getFirstRssi()I

    move-result v0

    iput v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstRssi:I

    .line 89
    invoke-virtual {p1}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getFirstTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstTimestamp:J

    .line 90
    new-instance v0, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    invoke-virtual {p1}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getScanRecord()[B

    move-result-object v1

    invoke-static {v1}, Luk/co/alt236/bluetoothlelib/util/AdRecordUtils;->parseScanRecordAsSparseArray([B)Landroid/util/SparseArray;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;-><init>(Landroid/util/SparseArray;)V

    iput-object v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRecordStore:Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    .line 92
    invoke-virtual {p1}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getRssiLog()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRssiLog:Ljava/util/Map;

    .line 93
    invoke-virtual {p1}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getScanRecord()[B

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mScanRecord:[B

    .line 94
    return-void
.end method

.method private addToRssiLog(JI)V
    .locals 5
    .param p1, "timestamp"    # J
    .param p3, "rssiReading"    # I

    .prologue
    .line 123
    iget-wide v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentTimestamp:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 124
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRssiLog:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 127
    :cond_0
    iput p3, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentRssi:I

    .line 128
    iput-wide p1, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentTimestamp:J

    .line 129
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRssiLog:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method private static resolveBondingState(I)Ljava/lang/String;
    .locals 1
    .param p0, "bondState"    # I

    .prologue
    .line 369
    packed-switch p0, :pswitch_data_0

    .line 377
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 371
    :pswitch_0
    const-string v0, "Paired"

    goto :goto_0

    .line 373
    :pswitch_1
    const-string v0, "Pairing"

    goto :goto_0

    .line 375
    :pswitch_2
    const-string v0, "Unbonded"

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    if-ne p0, p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v1

    .line 147
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 148
    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 150
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 151
    check-cast v0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;

    .line 152
    .local v0, "other":Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;
    iget v3, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentRssi:I

    iget v4, v0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentRssi:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 153
    goto :goto_0

    .line 154
    :cond_4
    iget-wide v4, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentTimestamp:J

    iget-wide v6, v0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentTimestamp:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    move v1, v2

    .line 155
    goto :goto_0

    .line 156
    :cond_5
    iget-object v3, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_6

    .line 157
    iget-object v3, v0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_7

    move v1, v2

    .line 158
    goto :goto_0

    .line 159
    :cond_6
    iget-object v3, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, v0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 160
    goto :goto_0

    .line 161
    :cond_7
    iget v3, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstRssi:I

    iget v4, v0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstRssi:I

    if-eq v3, v4, :cond_8

    move v1, v2

    .line 162
    goto :goto_0

    .line 163
    :cond_8
    iget-wide v4, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstTimestamp:J

    iget-wide v6, v0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstTimestamp:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_9

    move v1, v2

    .line 164
    goto :goto_0

    .line 165
    :cond_9
    iget-object v3, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRecordStore:Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    if-nez v3, :cond_a

    .line 166
    iget-object v3, v0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRecordStore:Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    if-eqz v3, :cond_b

    move v1, v2

    .line 167
    goto :goto_0

    .line 168
    :cond_a
    iget-object v3, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRecordStore:Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    iget-object v4, v0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRecordStore:Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 169
    goto :goto_0

    .line 170
    :cond_b
    iget-object v3, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRssiLog:Ljava/util/Map;

    if-nez v3, :cond_c

    .line 171
    iget-object v3, v0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRssiLog:Ljava/util/Map;

    if-eqz v3, :cond_d

    move v1, v2

    .line 172
    goto :goto_0

    .line 173
    :cond_c
    iget-object v3, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRssiLog:Ljava/util/Map;

    iget-object v4, v0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRssiLog:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 174
    goto :goto_0

    .line 175
    :cond_d
    iget-object v3, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mScanRecord:[B

    iget-object v4, v0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mScanRecord:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 176
    goto/16 :goto_0
.end method

.method public getAdRecordStore()Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRecordStore:Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothDeviceBondState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    invoke-static {v0}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->resolveBondingState(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothDeviceClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    invoke-static {v0}, Luk/co/alt236/bluetoothlelib/resolvers/BluetoothClassResolver;->resolveDeviceClass(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getFirstRssi()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstRssi:I

    return v0
.end method

.method public getFirstTimestamp()J
    .locals 2

    .prologue
    .line 240
    iget-wide v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstTimestamp:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentRssi:I

    return v0
.end method

.method protected getRssiLog()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRssiLog:Ljava/util/Map;

    return-object v0
.end method

.method public getRunningAverageRssi()D
    .locals 6

    .prologue
    .line 276
    iget-object v4, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRssiLog:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 277
    .local v3, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 279
    .local v1, "sum":I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 280
    .local v2, "value":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v1, v4

    .line 281
    goto :goto_0

    .line 283
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_0
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    div-int v4, v1, v4

    int-to-double v4, v4

    return-wide v4
.end method

.method public getScanRecord()[B
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mScanRecord:[B

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 301
    iget-wide v0, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentTimestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v3, 0x0

    .line 309
    const/16 v0, 0x1f

    .line 310
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 311
    .local v1, "result":I
    iget v2, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentRssi:I

    add-int/lit8 v1, v2, 0x1f

    .line 312
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentTimestamp:J

    iget-wide v6, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentTimestamp:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 313
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 314
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstRssi:I

    add-int v1, v2, v4

    .line 315
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstTimestamp:J

    iget-wide v6, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstTimestamp:J

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 316
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRecordStore:Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 317
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRssiLog:Ljava/util/Map;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 318
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mScanRecord:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    .line 319
    return v1

    .line 313
    :cond_0
    iget-object v2, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->hashCode()I

    move-result v2

    goto :goto_0

    .line 316
    :cond_1
    iget-object v2, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRecordStore:Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 317
    :cond_2
    iget-object v3, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRssiLog:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothLeDevice [mDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScanRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mScanRecord:[B

    invoke-static {v1}, Luk/co/alt236/bluetoothlelib/util/ByteUtils;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRecordStore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRecordStore:Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getBluetoothDeviceBondState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getBluetoothDeviceBondState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getBluetoothDeviceClassName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getBluetoothDeviceClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized updateRssiReading(JI)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "rssiReading"    # I

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->addToRssiLog(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 345
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Ljava/lang/ClassLoader;)V

    .line 347
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "device_scanrecord"

    iget-object v2, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mScanRecord:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 349
    const-string v1, "device_first_rssi"

    iget v2, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstRssi:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    const-string v1, "current_rssi"

    iget v2, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentRssi:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    const-string v1, "first_timestamp"

    iget-wide v2, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mFirstTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 353
    const-string v1, "current_timestamp"

    iget-wide v2, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mCurrentTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 355
    const-string v1, "bluetooth_device"

    iget-object v2, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 356
    const-string v1, "device_scanrecord_store"

    iget-object v2, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRecordStore:Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 357
    const-string v2, "device_rssi_log"

    iget-object v1, p0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->mRssiLog:Ljava/util/Map;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 359
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 360
    return-void
.end method
