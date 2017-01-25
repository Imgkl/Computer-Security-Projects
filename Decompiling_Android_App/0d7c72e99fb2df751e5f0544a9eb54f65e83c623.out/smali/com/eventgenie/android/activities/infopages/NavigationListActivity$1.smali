.class Lcom/eventgenie/android/activities/infopages/NavigationListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "NavigationListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/infopages/NavigationListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/infopages/NavigationListActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/infopages/NavigationListActivity;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity$1;->this$0:Lcom/eventgenie/android/activities/infopages/NavigationListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eventgenie.android.REFRESH_BADGES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity$1;->this$0:Lcom/eventgenie/android/activities/infopages/NavigationListActivity;

    # getter for: Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->access$000(Lcom/eventgenie/android/activities/infopages/NavigationListActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity$1;->this$0:Lcom/eventgenie/android/activities/infopages/NavigationListActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity$1;->this$0:Lcom/eventgenie/android/activities/infopages/NavigationListActivity;

    # getter for: Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->access$000(Lcom/eventgenie/android/activities/infopages/NavigationListActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 81
    iget-object v0, p0, Lcom/eventgenie/android/activities/infopages/NavigationListActivity$1;->this$0:Lcom/eventgenie/android/activities/infopages/NavigationListActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/infopages/NavigationListActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    goto :goto_0
.end method
