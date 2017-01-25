.class Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "DashboardTabsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;

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

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eventgenie.android.REFRESH_BADGES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;

    # invokes: Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->updateBadgeCounts()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->access$000(Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;)V

    .line 102
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;

    # setter for: Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->mGotMessages:Z
    invoke-static {v0, v4}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->access$102(Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;Z)Z

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 105
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eventgenie.android.BROADCAST_SERVER_CHECK_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;

    invoke-static {v0}, Lcom/genie_connect/android/services/ServiceManager;->isLiveSyncServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/genie_connect/android/services/ServiceManager;->isDataSyncServiceUpdating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$2;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;

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
