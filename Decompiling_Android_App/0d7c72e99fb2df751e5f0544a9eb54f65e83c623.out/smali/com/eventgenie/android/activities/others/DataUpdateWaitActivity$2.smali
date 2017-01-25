.class Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity$2;
.super Ljava/lang/Object;
.source "DataUpdateWaitActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->doDummyThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity$2;->this$0:Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    :cond_0
    invoke-static {}, Lcom/genie_connect/android/services/dss/DataSyncService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity$2;->this$0:Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;->access$202(Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;Z)Z

    .line 122
    return-void
.end method
