.class Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ArticleListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.eventgenie.android.BROADCAST_SERVER_CHECK_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    invoke-static {v0}, Lcom/genie_connect/android/services/ServiceManager;->isLiveSyncServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/genie_connect/android/services/ServiceManager;->isDataSyncServiceUpdating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "messages"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "articles"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0
.end method
