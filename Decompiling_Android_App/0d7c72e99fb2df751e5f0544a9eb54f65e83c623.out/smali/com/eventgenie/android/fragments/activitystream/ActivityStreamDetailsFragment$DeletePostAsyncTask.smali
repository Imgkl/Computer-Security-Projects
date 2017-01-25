.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeletePostAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityStreamDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeletePostAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeletePostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 167
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeletePostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$000(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Ljava/lang/Long;

    move-result-object v3

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeletePostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/eventgenie/android/activities/base/GenieAbcActivity;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods;->deletePost(Ljava/lang/Long;J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 172
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 161
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeletePostAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeletePostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeletePostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    sget v2, Lcom/eventgenie/android/R$string;->webview_error_title_you_are_currently_offline:I

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 181
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "ACTIVITYSTREAM_POST_ID"

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeletePostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$000(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 188
    const-string v1, "ACTIVITYSTREAM_POST_DELETED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeletePostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 190
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeletePostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 198
    .end local v0    # "data":Landroid/content/Intent;
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeletePostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeletePostAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    sget v3, Lcom/eventgenie/android/R$string;->webview_error_title_you_are_currently_offline:I

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 161
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeletePostAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
