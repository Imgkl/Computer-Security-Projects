.class public Lcom/genie_connect/android/services/ibeacon/BLEScanService;
.super Landroid/app/Service;
.source "BLEScanService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field public static final EXTRA_DATA:Ljava/lang/String; = "com.example.bluetooth.le.EXTRA_DATA"

.field private static final REQUEST_ENABLE_BT:I = 0x1

.field private static final STATE_CONNECTED:I = 0x2

.field private static final STATE_CONNECTING:I = 0x1

.field private static final STATE_DISCONNECTED:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BLEScanService"

.field public static final UUID_HEART_RATE_MEASUREMENT:Ljava/util/UUID;

.field private static _instance:Lcom/genie_connect/android/services/ibeacon/BLEScanService;

.field private static openBTIntentShown:Z


# instance fields
.field private mBluetoothDeviceAddress:Ljava/lang/String;

.field private mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mConnectionState:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanThread:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->_instance:Lcom/genie_connect/android/services/ibeacon/BLEScanService;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->openBTIntentShown:Z

    .line 84
    const-string v0, "00002a37-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->UUID_HEART_RATE_MEASUREMENT:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mConnectionState:I

    .line 47
    new-instance v0, Lcom/genie_connect/android/services/ibeacon/BLEScanService$1;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/services/ibeacon/BLEScanService$1;-><init>(Lcom/genie_connect/android/services/ibeacon/BLEScanService;)V

    iput-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/genie_connect/android/services/ibeacon/BLEScanService;)V
    .locals 0
    .param p0, "x0"    # Lcom/genie_connect/android/services/ibeacon/BLEScanService;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->startScanning()V

    return-void
.end method

.method public static addDays(Ljava/util/Date;I)Ljava/util/Date;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "days"    # I

    .prologue
    .line 235
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 236
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 237
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 238
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static dateCorrespondsToEvent()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 215
    invoke-static {v3}, Lcom/eventgenie/android/EventGenieApplication;->getEventStartStopTime(Z)Landroid/util/Pair;

    move-result-object v0

    .line 216
    .local v0, "eventDates":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/Date;Ljava/util/Date;>;"
    if-nez v0, :cond_0

    move v2, v3

    .line 229
    :goto_0
    return v2

    .line 219
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ BLE Event Dates: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "|||"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 221
    .local v1, "now":Ljava/util/Date;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ BLE Current Date: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 223
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/Date;

    const/4 v5, -0x1

    invoke-static {v2, v5}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->addDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Date;

    invoke-static {v2, v4}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->addDays(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    :cond_1
    const-string v2, "^ BLE Date wrong. Do not start. Also stop scanning"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    move v2, v3

    .line 225
    goto :goto_0

    .line 228
    :cond_2
    const-string v2, "^ BLE Date ok. Start"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    move v2, v4

    .line 229
    goto :goto_0
.end method

.method public static getInstance()Lcom/genie_connect/android/services/ibeacon/BLEScanService;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->_instance:Lcom/genie_connect/android/services/ibeacon/BLEScanService;

    return-object v0
.end method

.method private startScanning()V
    .locals 2

    .prologue
    .line 164
    const-string v0, "^ BLEScanService start Scanning check"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mScanThread:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mScanThread:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    invoke-virtual {v0}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mScanThread:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    invoke-virtual {v0}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 167
    :cond_0
    const-string v0, "^ BLEScanService actually start Scanning"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mScanThread:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mScanThread:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->cancel(Z)Z

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mScanThread:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    .line 172
    :cond_1
    new-instance v0, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    iget-object v1, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mScanThread:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    .line 173
    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mScanThread:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 175
    :cond_2
    return-void
.end method

.method public static startServiceConditionally(Landroid/content/Context;)V
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 191
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/genie_connect/android/services/ibeacon/BLEScanService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v1, "i":Landroid/content/Intent;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 193
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;->hasBLEChip(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x12

    invoke-static {v3}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isAtLeastApiLevel(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "beacon_scan_forever"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->dateCorrespondsToEvent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    :cond_0
    invoke-static {p0}, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;->isBTOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 198
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 209
    :cond_1
    :goto_0
    invoke-static {}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->dateCorrespondsToEvent()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "beacon_scan_forever"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 210
    invoke-virtual {p0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 212
    :cond_2
    return-void

    .line 200
    :cond_3
    invoke-static {p0}, Lcom/genie_connect/android/services/ibeacon/BluetoothLeDeviceStore;->isBTOff(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    sget-boolean v3, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->openBTIntentShown:Z

    if-nez v3, :cond_1

    .line 202
    const/4 v3, 0x1

    sput-boolean v3, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->openBTIntentShown:Z

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "enableBtIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 159
    const-string v0, "^ BLEScanService onBind"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 134
    sput-object p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->_instance:Lcom/genie_connect/android/services/ibeacon/BLEScanService;

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    const-string v1, "^ BLEScanService onCreate - started scan"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 142
    const-string v0, "^ BLEScanService onDestroy - stopped scan"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mScanThread:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->cancel(Z)Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mScanThread:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    .line 145
    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 147
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 151
    const-string v0, "^ BLEScanService onStartCommand"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 152
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 153
    invoke-direct {p0}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->startScanning()V

    .line 154
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public stopScanning()V
    .locals 2

    .prologue
    .line 178
    const-string v0, "^ BLEScanService stop scanning check"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mScanThread:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mScanThread:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    invoke-virtual {v0}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    const-string v0, "^ BLEScanService actually stop Scanning"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mScanThread:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mScanThread:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/services/ibeacon/BLEScanTask;->cancel(Z)Z

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->mScanThread:Lcom/genie_connect/android/services/ibeacon/BLEScanTask;

    .line 186
    :cond_1
    return-void
.end method
