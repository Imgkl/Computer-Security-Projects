.class public Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;
.super Ljava/lang/Object;
.source "BluetoothLeDeviceStore.java"


# instance fields
.field private final mDeviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;->mDeviceMap:Ljava/util/Map;

    .line 25
    return-void
.end method

.method public static hasBLEChip(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isBTOff(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 84
    .local v0, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBTOn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 73
    .local v0, "mBluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addDevice(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)V
    .locals 2
    .param p1, "device"    # Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;->mDeviceMap:Ljava/util/Map;

    invoke-virtual {p1}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;->mDeviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    .local v0, "methodResult":Ljava/util/List;, "Ljava/util/List<Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;>;"
    new-instance v1, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore$1;

    invoke-direct {v1, p0}, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore$1;-><init>(Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 68
    return-object v0
.end method

.method public hasDevice(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)Z
    .locals 2
    .param p1, "device"    # Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;->mDeviceMap:Ljava/util/Map;

    invoke-virtual {p1}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeDevicesNotFound(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "devices":Ljava/util/List;, "Ljava/util/List<Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;>;"
    iget-object v8, p0, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;->mDeviceMap:Ljava/util/Map;

    monitor-enter v8

    .line 29
    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v6, "removeStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;->mDeviceMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 31
    .local v1, "deviceAddr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 32
    .local v2, "deviceStillActive":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;

    .line 33
    .local v0, "devFound":Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;
    invoke-virtual {v0}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 34
    const/4 v2, 0x1

    .line 38
    .end local v0    # "devFound":Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;
    :cond_2
    if-nez v2, :cond_0

    .line 39
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    .end local v1    # "deviceAddr":Ljava/lang/String;
    .end local v2    # "deviceStillActive":Z
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "removeStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 42
    .restart local v6    # "removeStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 43
    .local v5, "removeString":Ljava/lang/String;
    iget-object v7, p0, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;->mDeviceMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 45
    .end local v5    # "removeString":Ljava/lang/String;
    :cond_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    return-void
.end method
