.class Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$1;
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
    .line 90
    iput-object p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->finish()V

    .line 94
    return-void
.end method
