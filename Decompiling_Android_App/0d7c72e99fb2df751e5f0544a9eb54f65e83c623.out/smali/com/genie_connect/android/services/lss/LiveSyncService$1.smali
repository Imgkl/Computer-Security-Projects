.class Lcom/genie_connect/android/services/lss/LiveSyncService$1;
.super Landroid/content/BroadcastReceiver;
.source "LiveSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/services/lss/LiveSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genie_connect/android/services/lss/LiveSyncService;


# direct methods
.method constructor <init>(Lcom/genie_connect/android/services/lss/LiveSyncService;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/genie_connect/android/services/lss/LiveSyncService$1;->this$0:Lcom/genie_connect/android/services/lss/LiveSyncService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    const-string v0, "^ LSS: Received cancellation request"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/genie_connect/android/services/lss/LiveSyncService$1;->this$0:Lcom/genie_connect/android/services/lss/LiveSyncService;

    const/4 v1, 0x1

    # setter for: Lcom/genie_connect/android/services/lss/LiveSyncService;->mUserCancelled:Z
    invoke-static {v0, v1}, Lcom/genie_connect/android/services/lss/LiveSyncService;->access$002(Lcom/genie_connect/android/services/lss/LiveSyncService;Z)Z

    .line 108
    return-void
.end method
