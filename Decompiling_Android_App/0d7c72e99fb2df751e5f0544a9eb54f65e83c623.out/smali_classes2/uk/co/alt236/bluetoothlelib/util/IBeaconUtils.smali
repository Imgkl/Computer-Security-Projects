.class public Luk/co/alt236/bluetoothlelib/util/IBeaconUtils;
.super Ljava/lang/Object;
.source "IBeaconUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;
    }
.end annotation


# static fields
.field private static final DISTANCE_THRESHOLD_IMMEDIATE:D = 0.5

.field private static final DISTANCE_THRESHOLD_NEAR:D = 3.0

.field private static final DISTANCE_THRESHOLD_WTF:D

.field private static final MANUFACTURER_DATA_IBEACON_PREFIX:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils;->MANUFACTURER_DATA_IBEACON_PREFIX:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ct
        0x0t
        0x2t
        0x15t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static calculateAccuracy(ID)D
    .locals 11
    .param p0, "txPower"    # I
    .param p1, "rssi"    # D

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 39
    const-wide/16 v4, 0x0

    cmpl-double v4, p1, v4

    if-nez v4, :cond_0

    .line 40
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 49
    :goto_0
    return-wide v0

    .line 43
    :cond_0
    mul-double v4, p1, v8

    int-to-double v6, p0

    div-double v2, v4, v6

    .line 44
    .local v2, "ratio":D
    cmpg-double v4, v2, v8

    if-gez v4, :cond_1

    .line 45
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    .line 48
    :cond_1
    const-wide v4, 0x3feccad57bc7f77bL    # 0.89976

    const-wide v6, 0x401ed6872b020c4aL    # 7.7095

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x3fbc6a7ef9db22d1L    # 0.111

    add-double v0, v4, v6

    .line 49
    .local v0, "accuracy":D
    goto :goto_0
.end method

.method public static getDistanceDescriptor(D)Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;
    .locals 2
    .param p0, "accuracy"    # D

    .prologue
    .line 14
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 15
    sget-object v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;->UNKNOWN:Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    .line 26
    :goto_0
    return-object v0

    .line 18
    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    .line 19
    sget-object v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;->IMMEDIATE:Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    goto :goto_0

    .line 22
    :cond_1
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    .line 23
    sget-object v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;->NEAR:Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    goto :goto_0

    .line 26
    :cond_2
    sget-object v0, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;->FAR:Luk/co/alt236/bluetoothlelib/util/IBeaconUtils$IBeaconDistanceDescriptor;

    goto :goto_0
.end method

.method public static isThisAnIBeacon(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)Z
    .locals 2
    .param p0, "device"    # Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;

    .prologue
    .line 60
    invoke-virtual {p0}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getAdRecordStore()Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Luk/co/alt236/bluetoothlelib/device/adrecord/AdRecordStore;->getRecordDataAsString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils;->isThisAnIBeacon([B)Z

    move-result v0

    return v0
.end method

.method public static isThisAnIBeacon([B)Z
    .locals 3
    .param p0, "manufacturerData"    # [B

    .prologue
    const/4 v0, 0x0

    .line 71
    if-nez p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    array-length v1, p0

    const/16 v2, 0x19

    if-lt v1, v2, :cond_0

    .line 76
    sget-object v1, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils;->MANUFACTURER_DATA_IBEACON_PREFIX:[B

    invoke-static {p0, v1}, Luk/co/alt236/bluetoothlelib/util/ByteUtils;->doesArrayBeginWith([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const/4 v0, 0x1

    goto :goto_0
.end method
