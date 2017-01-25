.class Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$3;
.super Ljava/lang/Object;
.source "DashboardTabsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->requestPermission()V
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
    .line 336
    iput-object p1, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$3;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity$3;->this$0:Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/dashboard/DashboardTabsActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 340
    return-void
.end method
