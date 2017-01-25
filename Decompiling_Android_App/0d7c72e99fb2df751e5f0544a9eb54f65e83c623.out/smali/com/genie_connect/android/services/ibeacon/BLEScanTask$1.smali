.class Lcom/genie_connect/android/services/ibeacon/BLEScanTask$1;
.super Ljava/lang/Object;
.source "BLEScanTask.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/services/ibeacon/BLEScanTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;


# direct methods
.method constructor <init>(Lcom/genie_connect/android/services/ibeacon/BLEScanTask;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask$1;->this$0:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 44
    new-instance v0, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;-><init>(Landroid/bluetooth/BluetoothDevice;I[BJ)V

    .line 48
    .local v0, "dev":Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;
    :try_start_0
    invoke-static {v0}, Luk/co/alt236/bluetoothlelib/util/IBeaconUtils;->isThisAnIBeacon(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance v6, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;

    invoke-direct {v6, v0}, Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;-><init>(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)V

    .line 50
    .local v6, "beacon":Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;
    iget-object v1, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask$1;->this$0:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    # getter for: Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->access$000(Lcom/genie_connect/android/services/ibeacon/BLEScanTask;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->deviceListContainsBeacon(Ljava/util/List;Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask$1;->this$0:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    # getter for: Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->deviceList:Ljava/util/List;
    invoke-static {v1}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->access$000(Lcom/genie_connect/android/services/ibeacon/BLEScanTask;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v6    # "beacon":Luk/co/alt236/bluetoothlelib/device/IBeaconDevice;
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v7

    .line 57
    .local v7, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ Bluetooth parsing of device failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0
.end method
