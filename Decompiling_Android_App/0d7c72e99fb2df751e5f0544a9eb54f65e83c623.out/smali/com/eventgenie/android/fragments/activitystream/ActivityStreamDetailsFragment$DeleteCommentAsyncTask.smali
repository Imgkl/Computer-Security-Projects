.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeleteCommentAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityStreamDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteCommentAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
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
    .line 357
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeleteCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Long;

    .prologue
    .line 363
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeleteCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    const-class v2, Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;

    .line 365
    .local v0, "repo":Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;->deleteComment(Ljava/lang/Long;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 357
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeleteCommentAsyncTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 370
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeleteCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeleteCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    sget v2, Lcom/eventgenie/android/R$string;->message_activity_stream_comment_deleted:I

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 377
    new-instance v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeleteCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-direct {v0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeleteCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$000(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 386
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeleteCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeleteCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    sget v2, Lcom/eventgenie/android/R$string;->message_activity_stream_comment_delete_failed:I

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 357
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$DeleteCommentAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
