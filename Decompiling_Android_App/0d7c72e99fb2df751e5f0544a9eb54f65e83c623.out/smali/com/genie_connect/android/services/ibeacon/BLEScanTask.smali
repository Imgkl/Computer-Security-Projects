.class public Lcom/genie_connect/android/services/ibeacon/BLEScanTask;
.super Landroid/os/AsyncTask;
.source "BLEScanTask.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BLEScanTask"


# instance fields
.field private deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBTLEDeviceStore:Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1
    .param p1, "mAdapter"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    new-instance v0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask$1;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask$1;-><init>(Lcom/genie_connect/android/services/ibeacon/BLEScanTask;)V

    iput-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 33
    iput-object p1, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->deviceList:Ljava/util/List;

    .line 35
    new-instance v0, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;

    invoke-direct {v0}, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->mBTLEDeviceStore:Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/genie_connect/android/services/ibeacon/BLEScanTask;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->deviceList:Ljava/util/List;

    return-object v0
.end method

.method public static deviceListContainsBeacon(Ljava/util/List;Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;)Z
    .locals 4
    .param p1, "beacon"    # Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;",
            ">;",
            "Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "deviceList":Ljava/util/List;, "Ljava/util/List<Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;

    .line 64
    .local v0, "dev":Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;
    invoke-virtual {p1}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const/4 v2, 0x1

    .line 68
    .end local v0    # "dev":Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getBeaconAllInfo(Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;)Ljava/lang/String;
    .locals 2
    .param p1, "dev"    # Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->getMajor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->getMinor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isOurBeacon(Lcom/genie_connect/android/services/ibeacon/BeaconInfo;Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;)Z
    .locals 8
    .param p1, "beaconInf"    # Lcom/genie_connect/android/services/ibeacon/BeaconInfo;
    .param p2, "device"    # Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->getUUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "beaconUUID":Ljava/lang/String;
    invoke-virtual {p2}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->getUUID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "deviceUUID":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->getMajor()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "beaconMajor":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->getMajor()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "deviceMajor":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->getMinor()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "beaconMinor":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->getMinor()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "deviceMinor":Ljava/lang/String;
    const-string v6, "null"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v3

    .line 150
    :cond_0
    const-string v6, "null"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v4

    .line 152
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 73
    const-string v12, "^ BLEScanTask doInBackground"

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v12

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 76
    .local v7, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    const-string v13, "BLEScanTask"

    invoke-virtual {v12, v13}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 77
    :goto_0
    invoke-virtual {p0}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->isCancelled()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 79
    const-string v12, "beacon_scan_time"

    const-string v13, "3"

    invoke-interface {v7, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 80
    .local v9, "scanTimeString":Ljava/lang/String;
    const-string v12, "beacon_sleep_time"

    const-string v13, "10"

    invoke-interface {v7, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 81
    .local v11, "sleepTimeString":Ljava/lang/String;
    const/4 v8, 0x3

    .line 82
    .local v8, "scanTime":I
    const/16 v10, 0xa

    .line 84
    .local v10, "sleepTime":I
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 85
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v10

    .line 90
    :goto_1
    iget-object v12, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->deviceList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 92
    iget-object v12, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v13, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v12, v13}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 95
    mul-int/lit16 v12, v8, 0x3e8

    int-to-long v12, v12

    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 102
    :goto_2
    :try_start_2
    iget-object v12, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v13, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v12, v13}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 105
    :goto_3
    iget-object v12, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->mBTLEDeviceStore:Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;

    iget-object v13, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->deviceList:Ljava/util/List;

    invoke-virtual {v12, v13}, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;->removeDevicesNotFound(Ljava/util/List;)V

    .line 107
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/eventgenie/android/EventGenieApplication;->getBeaconIdentifierList(Z)Ljava/util/List;

    move-result-object v1

    .line 109
    .local v1, "beaconInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/services/ibeacon/BeaconInfo;>;"
    if-eqz v1, :cond_4

    .line 110
    iget-object v12, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->deviceList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;

    .line 111
    .local v2, "dev":Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;

    .line 112
    .local v0, "beaconInf":Lcom/genie_connect/android/services/ibeacon/BeaconInfo;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ BLEScanTask check device ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0, v2}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->getBeaconAllInfo(Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] against beaconinfo ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->getAllInfo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, v0, v2}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->isOurBeacon(Lcom/genie_connect/android/services/ibeacon/BeaconInfo;Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 114
    iget-object v12, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->mBTLEDeviceStore:Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;

    invoke-virtual {v12, v2}, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;->hasDevice(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 115
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ BLEScanTask found NEW Device: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Lcom/genie_connect/android/services/ibeacon/BeaconInfo;->getAllInfo()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/genie_connect/android/bl/hotspots/HotspotActionExecutor;->performActionsOnBeaconFound(Ljava/lang/String;)V

    goto :goto_5

    .line 96
    .end local v0    # "beaconInf":Lcom/genie_connect/android/services/ibeacon/BeaconInfo;
    .end local v1    # "beaconInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/services/ibeacon/BeaconInfo;>;"
    .end local v2    # "dev":Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 97
    .local v4, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 98
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->cancel(Z)Z

    goto/16 :goto_2

    .line 118
    .end local v4    # "e1":Ljava/lang/InterruptedException;
    .restart local v0    # "beaconInf":Lcom/genie_connect/android/services/ibeacon/BeaconInfo;
    .restart local v1    # "beaconInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/services/ibeacon/BeaconInfo;>;"
    .restart local v2    # "dev":Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ BLEScanTask found OLD Device: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 122
    .end local v0    # "beaconInf":Lcom/genie_connect/android/services/ibeacon/BeaconInfo;
    :cond_2
    iget-object v12, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->mBTLEDeviceStore:Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;

    invoke-virtual {v12, v2}, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;->addDevice(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)V

    goto/16 :goto_4

    .line 124
    .end local v2    # "dev":Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v12, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->deviceList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 128
    :cond_4
    mul-int/lit16 v12, v10, 0x3e8

    int-to-long v12, v12

    :try_start_3
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 129
    :catch_1
    move-exception v3

    .line 130
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 131
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->cancel(Z)Z

    goto/16 :goto_0

    .line 134
    .end local v1    # "beaconInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/services/ibeacon/BeaconInfo;>;"
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "scanTime":I
    .end local v9    # "scanTimeString":Ljava/lang/String;
    .end local v10    # "sleepTime":I
    .end local v11    # "sleepTimeString":Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    return-object v12

    .line 103
    .restart local v8    # "scanTime":I
    .restart local v9    # "scanTimeString":Ljava/lang/String;
    .restart local v10    # "sleepTime":I
    .restart local v11    # "sleepTimeString":Ljava/lang/String;
    :catch_2
    move-exception v12

    goto/16 :goto_3

    .line 86
    :catch_3
    move-exception v12

    goto/16 :goto_1
.end method
