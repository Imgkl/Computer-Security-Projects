.class public Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;
.super Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;
.source "IBeaconDevice.java"


# instance fields
.field private final mIBeaconData:Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 23
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;-><init>(Landroid/bluetooth/BluetoothDevice;I[BJ)V

    .line 24
    new-instance v0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;

    invoke-direct {v0, p0}, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;-><init>(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)V

    iput-object v0, p0, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->mIBeaconData:Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;I[BJ)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B
    .param p4, "timestamp"    # J

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;-><init>(Landroid/bluetooth/BluetoothDevice;I[BJ)V

    .line 37
    new-instance v0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;

    invoke-direct {v0, p0}, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;-><init>(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)V

    iput-object v0, p0, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->mIBeaconData:Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;-><init>(Landroid/os/Parcel;)V

    .line 54
    new-instance v0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;

    invoke-direct {v0, p0}, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;-><init>(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)V

    iput-object v0, p0, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->mIBeaconData:Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;

    .line 55
    return-void
.end method

.method public constructor <init>(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)V
    .locals 1
    .param p1, "device"    # Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;-><init>(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)V

    .line 49
    new-instance v0, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;

    invoke-direct {v0, p0}, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;-><init>(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)V

    iput-object v0, p0, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->mIBeaconData:Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;

    .line 50
    return-void
.end method


# virtual methods
.method public getAccuracy()D
    .locals 4

    .prologue
    .line 65
    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->getCalibratedTxPower()I

    move-result v0

    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->getRunningAverageRssi()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils;->calculateAccuracy(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public getCalibratedTxPower()I
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->getIBeaconData()Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->getCalibratedTxPower()I

    move-result v0

    return v0
.end method

.method public getCompanyIdentifier()I
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->getIBeaconData()Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->getCompanyIdentifier()I

    move-result v0

    return v0
.end method

.method public getDistanceDescriptor()Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->getAccuracy()D

    move-result-wide v0

    invoke-static {v0, v1}, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils;->getDistanceDescriptor(D)Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getIBeaconData()Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->mIBeaconData:Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->getIBeaconData()Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->getMajor()I

    move-result v0

    return v0
.end method

.method public getMinor()I
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->getIBeaconData()Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->getMinor()I

    move-result v0

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->getIBeaconData()Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/alt236/bluetoothlelib/device/mfdata/IBeaconManufacturerData;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
