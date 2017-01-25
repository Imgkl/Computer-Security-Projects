.class public final Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;
.super Ljava/lang/Object;
.source "IBeaconManufacturerData.java"


# instance fields
.field private final mCalibratedTxPower:I

.field private final mCompanyIdentidier:I

.field private final mData:[B

.field private final mIBeaconAdvertisment:I

.field private final mMajor:I

.field private final mMinor:I

.field private final mUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)V
    .locals 2
    .param p1, "device"    # Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;

    .prologue
    .line 57
    invoke-virtual {p1}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getAdRecordStore()Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->getRecord(I)Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecord;->getData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;-><init>([B)V

    .line 58
    return-void
.end method

.method public constructor <init>([B)V
    .locals 7
    .param p1, "data"    # [B

    .prologue
    const/16 v6, 0x18

    const/16 v5, 0x16

    const/16 v4, 0x14

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mData:[B

    .line 69
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mData:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Luk/co/alt236/bluetoothlelib/util/ByteUtils;->invertArray([B)[B

    move-result-object v0

    invoke-static {v0}, Luk/co/alt236/bluetoothlelib/util/ByteUtils;->getIntFrom2ByteArray([B)I

    move-result v0

    iput v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mCompanyIdentidier:I

    .line 72
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mData:[B

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Luk/co/alt236/bluetoothlelib/util/ByteUtils;->getIntFrom2ByteArray([B)I

    move-result v0

    iput v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mIBeaconAdvertisment:I

    .line 73
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mData:[B

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->calculateUUIDString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mUUID:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mData:[B

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Luk/co/alt236/bluetoothlelib/util/ByteUtils;->getIntFrom2ByteArray([B)I

    move-result v0

    iput v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mMajor:I

    .line 75
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mData:[B

    invoke-static {v0, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Luk/co/alt236/bluetoothlelib/util/ByteUtils;->getIntFrom2ByteArray([B)I

    move-result v0

    iput v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mMinor:I

    .line 76
    aget-byte v0, p1, v6

    iput v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mCalibratedTxPower:I

    .line 77
    return-void
.end method

.method private static calculateUUIDString([B)Ljava/lang/String;
    .locals 6
    .param p0, "uuid"    # [B

    .prologue
    const/16 v5, 0x2d

    .line 129
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_5

    .line 132
    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    :cond_0
    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    :cond_1
    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    :cond_2
    const/16 v3, 0xa

    if-ne v0, v3, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    :cond_3
    aget-byte v3, p0, v0

    invoke-static {v3}, Luk/co/alt236/bluetoothlelib/util/ByteUtils;->getIntFromByte(B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getCalibratedTxPower()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mCalibratedTxPower:I

    return v0
.end method

.method public getCompanyIdentifier()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mCompanyIdentidier:I

    return v0
.end method

.method public getIBeaconAdvertisement()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mIBeaconAdvertisment:I

    return v0
.end method

.method public getMajor()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mMajor:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mMinor:I

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->mUUID:Ljava/lang/String;

    return-object v0
.end method
