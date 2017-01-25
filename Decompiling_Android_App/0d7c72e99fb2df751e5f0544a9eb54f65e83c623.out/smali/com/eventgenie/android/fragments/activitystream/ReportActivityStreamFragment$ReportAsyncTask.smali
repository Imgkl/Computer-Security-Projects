.class Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment$ReportAsyncTask;
.super Landroid/os/AsyncTask;
.source "ReportActivityStreamFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReportAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment$ReportAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "params"    # [Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;

    .prologue
    const/4 v9, 0x0

    .line 43
    aget-object v8, p1, v9

    .line 45
    .local v8, "param":Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;
    :try_start_0
    invoke-virtual {v8}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;->getFocus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;->getId()J

    move-result-wide v4

    invoke-virtual {v8}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;->getNamespace()J

    move-result-wide v6

    invoke-static/range {v1 .. v7}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods;->reportPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    :goto_0
    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, [Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment$ReportAsyncTask;->doInBackground([Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$ReportPostParams;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment$ReportAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment$ReportAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;

    sget v2, Lcom/eventgenie/android/R$string;->webview_error_title_you_are_currently_offline:I

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 61
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 65
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTIVITY_STREAM_REPORTED_NEEDS_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "refreshIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment$ReportAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;

    invoke-virtual {v1}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 70
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment$ReportAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;

    invoke-virtual {v1}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 71
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment$ReportAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;

    invoke-virtual {v1}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "refreshIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment$ReportAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;

    sget v3, Lcom/eventgenie/android/R$string;->webview_error_title_you_are_currently_offline:I

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ReportActivityStreamFragment$ReportAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
