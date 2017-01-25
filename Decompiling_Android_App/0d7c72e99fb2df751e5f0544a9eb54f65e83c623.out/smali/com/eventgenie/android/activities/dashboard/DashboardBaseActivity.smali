.class public Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "DashboardBaseActivity.java"


# instance fields
.field protected final mReceiverFinishHomeAction:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    .line 17
    new-instance v0, Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity$1;-><init>(Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity;->mReceiverFinishHomeAction:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 29
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.eventgenie.android.FINISH_HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity;->mReceiverFinishHomeAction:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity;->mReceiverFinishHomeAction:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 36
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onDestroy()V

    .line 37
    return-void
.end method
