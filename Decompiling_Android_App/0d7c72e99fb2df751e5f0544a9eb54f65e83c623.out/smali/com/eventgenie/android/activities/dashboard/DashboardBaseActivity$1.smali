.class Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DashboardBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity$1;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/dashboard/DashboardBaseActivity;->finish()V

    .line 21
    return-void
.end method
