.class Lcom/genie_connect/android/services/ibeacon/BLEScanService$1;
.super Landroid/content/BroadcastReceiver;
.source "BLEScanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/services/ibeacon/BLEScanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genie_connect/android/services/ibeacon/BLEScanService;


# direct methods
.method constructor <init>(Lcom/genie_connect/android/services/ibeacon/BLEScanService;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService$1;->this$0:Lcom/genie_connect/android/services/ibeacon/BLEScanService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 55
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .line 70
    .end local v1    # "state":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 63
    .restart local v1    # "state":I
    :pswitch_1
    iget-object v2, p0, Lcom/genie_connect/android/services/ibeacon/BLEScanService$1;->this$0:Lcom/genie_connect/android/services/ibeacon/BLEScanService;

    # invokes: Lcom/genie_connect/android/services/ibeacon/BLEScanService;->startScanning()V
    invoke-static {v2}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->access$000(Lcom/genie_connect/android/services/ibeacon/BLEScanService;)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
