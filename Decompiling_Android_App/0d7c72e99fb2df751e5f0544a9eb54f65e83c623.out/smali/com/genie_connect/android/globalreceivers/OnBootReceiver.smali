.class public Lcom/genie_connect/android/globalreceivers/OnBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnBootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    const/16 v1, 0x12

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->isAtLeastApiLevel(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.bluetooth_le"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genie_connect/android/services/ibeacon/BLEScanService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 21
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method
