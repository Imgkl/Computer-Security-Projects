.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityStreamDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CreateCommentAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
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
    .line 301
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 319
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    const-class v2, Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;

    .line 321
    .local v0, "repo":Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;
    invoke-static {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$000(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;->addComment(Ljava/lang/Long;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 301
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x1

    .line 327
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    sget v2, Lcom/eventgenie/android/R$string;->message_activity_stream_comment_added:I

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 335
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvAddComment:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$500(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 338
    new-instance v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-direct {v0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V

    new-array v1, v4, [Ljava/lang/Long;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->id:Ljava/lang/Long;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$000(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvAddComment:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$500(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 350
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ibAddComment:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$600(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 352
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 353
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    sget v2, Lcom/eventgenie/android/R$string;->message_activity_stream_comment_add_failed:I

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
    .line 301
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 307
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 308
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvAddComment:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$500(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 311
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->tvAddComment:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$500(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 312
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$CreateCommentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->ibAddComment:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$600(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 314
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 315
    return-void
.end method
