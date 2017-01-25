.class Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DashboardTileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eventgenie.android.REFRESH_BADGES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;

    # setter for: Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->mGotMessages:Z
    invoke-static {v0, v4}, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;->access$002(Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;Z)Z

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eventgenie.android.BROADCAST_SERVER_CHECK_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;

    invoke-static {v0}, Lcom/genie_connect/android/services/ServiceManager;->isLiveSyncServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/genie_connect/android/services/ServiceManager;->isDataSyncServiceUpdating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTileActivity;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const-string v2, "messages"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0
.end method
