.class Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$3;
.super Ljava/lang/Object;
.source "DashboardGridActivity.java"

# interfaces
.implements Lcom/eventgenie/android/activities/base/GenieBaseActivity$IActionCallBack;


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
    .line 312
    iput-object p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$3;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity$3;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardGridActivity;

    invoke-static {v0}, Lcom/genie_connect/android/services/ibeacon/BLEScanService;->startServiceConditionally(Landroid/content/Context;)V

    .line 316
    return-void
.end method
