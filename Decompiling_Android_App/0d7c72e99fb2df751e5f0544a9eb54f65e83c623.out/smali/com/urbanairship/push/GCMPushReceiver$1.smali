.class Lcom/urbanairship/push/GCMPushReceiver$1;
.super Ljava/lang/Object;
.source "GCMPushReceiver.java"

# interfaces
.implements Lcom/urbanairship/UAirship$OnReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/GCMPushReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/GCMPushReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/GCMPushReceiver;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/urbanairship/push/GCMPushReceiver$1;->this$0:Lcom/urbanairship/push/GCMPushReceiver;

    iput-object p2, p0, Lcom/urbanairship/push/GCMPushReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/urbanairship/push/GCMPushReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/urbanairship/push/GCMPushReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirshipReady(Lcom/urbanairship/UAirship;)V
    .locals 3
    .param p1, "airship"    # Lcom/urbanairship/UAirship;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/urbanairship/push/GCMPushReceiver$1;->this$0:Lcom/urbanairship/push/GCMPushReceiver;

    iget-object v1, p0, Lcom/urbanairship/push/GCMPushReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/urbanairship/push/GCMPushReceiver$1;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/urbanairship/push/GCMPushReceiver;->handleGCMReceived(Lcom/urbanairship/UAirship;Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, v1, v2}, Lcom/urbanairship/push/GCMPushReceiver;->access$000(Lcom/urbanairship/push/GCMPushReceiver;Lcom/urbanairship/UAirship;Landroid/content/Context;Landroid/content/Intent;)V

    .line 68
    iget-object v0, p0, Lcom/urbanairship/push/GCMPushReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 69
    return-void
.end method
