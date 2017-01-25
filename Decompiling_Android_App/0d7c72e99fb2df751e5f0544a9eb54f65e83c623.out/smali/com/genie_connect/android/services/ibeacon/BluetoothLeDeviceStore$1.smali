.class Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore$1;
.super Ljava/lang/Object;
.source "BluetoothLeDeviceStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;->getDeviceList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;


# direct methods
.method constructor <init>(Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore$1;->this$0:Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p1, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore$1;->compare(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)I

    move-result v0

    return v0
.end method

.method public compare(Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;)I
    .locals 2
    .param p1, "arg0"    # Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;
    .param p2, "arg1"    # Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;

    .prologue
    .line 64
    invoke-virtual {p1}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Luk/co/alt236/bluetoothlelib/device/BluetoothLeDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
