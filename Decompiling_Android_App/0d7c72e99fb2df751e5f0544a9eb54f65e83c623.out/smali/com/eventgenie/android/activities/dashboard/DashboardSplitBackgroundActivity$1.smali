.class Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DashboardSplitBackgroundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eventgenie.android.REFRESH_BADGES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mGridAdapter:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;
    invoke-static {v0}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->access$000(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;)Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->notifyDataSetChanged()V

    .line 102
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    const/4 v1, 0x1

    # setter for: Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->mGotMessages:Z
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;->access$102(Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;Z)Z

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
    invoke-static {}, Lcom/genie_connect/android/services/ServiceManager;->isDataSyncServiceUpdating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    invoke-static {v0}, Lcom/genie_connect/android/services/ServiceManager;->isLiveSyncServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardSplitBackgroundActivity;

    invoke-static {v0}, Lcom/genie_connect/android/services/ServiceManager;->doSyncEntitiesOnDashboard(Landroid/content/Context;)V

    goto :goto_0
.end method
