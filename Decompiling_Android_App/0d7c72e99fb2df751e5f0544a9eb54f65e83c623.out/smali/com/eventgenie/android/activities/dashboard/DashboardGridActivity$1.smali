.class Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DashboardGridActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eventgenie.android.REFRESH_BADGES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    # getter for: Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->mGridAdapter:Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;
    invoke-static {v0}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->access$000(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/other/DashboardIconAdapter;->notifyDataSetChanged()V

    .line 112
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->showIndicator(Z)V

    .line 115
    new-instance v0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;

    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-direct {v0, v1}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$UpdateMessageTask;-><init>(Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eventgenie.android.BROADCAST_SERVER_CHECK_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-static {v0}, Lcom/genie_connect/android/services/ServiceManager;->isLiveSyncServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/genie_connect/android/services/ServiceManager;->isDataSyncServiceUpdating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;->showIndicator(Z)V

    .line 122
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-static {v0}, Lcom/genie_connect/android/services/ServiceManager;->doSyncEntitiesOnDashboard(Landroid/content/Context;)V

    goto :goto_0
.end method
