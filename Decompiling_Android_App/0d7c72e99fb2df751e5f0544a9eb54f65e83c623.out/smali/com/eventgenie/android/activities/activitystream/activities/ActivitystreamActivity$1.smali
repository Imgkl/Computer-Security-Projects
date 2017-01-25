.class Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivitystreamActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x2

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "action":Ljava/lang/String;
    const-string v1, "LOGIN_RESULT_AUTHENTICATED_MSG"

    if-ne v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 68
    iget-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;

    # getter for: Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;
    invoke-static {v1}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->access$000(Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;)Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->refreshVisitorId()V

    .line 69
    iget-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;

    # getter for: Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;
    invoke-static {v1}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->access$000(Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;)Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->startPullToRefreshLiveSync(Z)V

    .line 70
    iget-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v4, v2, v3}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->onNavigationItemSelected(IJ)Z

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    const-string v1, "LOGIN_RESULT_CANCELLED_MSG"

    if-ne v0, v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 75
    iget-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 78
    :cond_2
    const-string v1, "ACTIVITY_STREAM_REPORTED_NEEDS_REFRESH"

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$1;->this$0:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;

    # getter for: Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->fragOnline:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;
    invoke-static {v1}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->access$000(Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;)Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->startPullToRefreshLiveSync(Z)V

    goto :goto_0
.end method
