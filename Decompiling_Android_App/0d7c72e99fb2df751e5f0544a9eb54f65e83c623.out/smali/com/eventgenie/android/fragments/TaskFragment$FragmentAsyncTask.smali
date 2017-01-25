.class Lcom/eventgenie/android/fragments/TaskFragment$FragmentAsyncTask;
.super Landroid/os/AsyncTask;
.source "TaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/fragments/TaskFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FragmentAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<TX;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/TaskFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/TaskFragment;)V
    .locals 0

    .prologue
    .line 92
    .local p0, "this":Lcom/eventgenie/android/fragments/TaskFragment$FragmentAsyncTask;, "Lcom/eventgenie/android/fragments/TaskFragment<TX;TT;>.FragmentAsyncTask;"
    iput-object p1, p0, Lcom/eventgenie/android/fragments/TaskFragment$FragmentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/TaskFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TX;)TT;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/eventgenie/android/fragments/TaskFragment$FragmentAsyncTask;, "Lcom/eventgenie/android/fragments/TaskFragment<TX;TT;>.FragmentAsyncTask;"
    .local p1, "params":[Ljava/lang/Object;, "[TX;"
    iget-object v0, p0, Lcom/eventgenie/android/fragments/TaskFragment$FragmentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/TaskFragment;

    # getter for: Lcom/eventgenie/android/fragments/TaskFragment;->mTaskCallBacks:Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;
    invoke-static {v0}, Lcom/eventgenie/android/fragments/TaskFragment;->access$000(Lcom/eventgenie/android/fragments/TaskFragment;)Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/eventgenie/android/fragments/TaskFragment$FragmentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/TaskFragment;

    # getter for: Lcom/eventgenie/android/fragments/TaskFragment;->mTaskCallBacks:Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;
    invoke-static {v0}, Lcom/eventgenie/android/fragments/TaskFragment;->access$000(Lcom/eventgenie/android/fragments/TaskFragment;)Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;

    move-result-object v0

    invoke-static {p1}, Lcom/eventgenie/android/fragments/TaskFragment;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;->doInBackground(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Fragment is detached so it cannot run the background task!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/eventgenie/android/fragments/TaskFragment$FragmentAsyncTask;, "Lcom/eventgenie/android/fragments/TaskFragment<TX;TT;>.FragmentAsyncTask;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/eventgenie/android/fragments/TaskFragment$FragmentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/TaskFragment;

    # setter for: Lcom/eventgenie/android/fragments/TaskFragment;->mResult:Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/eventgenie/android/fragments/TaskFragment;->access$102(Lcom/eventgenie/android/fragments/TaskFragment;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/eventgenie/android/fragments/TaskFragment$FragmentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/TaskFragment;

    # getter for: Lcom/eventgenie/android/fragments/TaskFragment;->mTaskCallBacks:Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;
    invoke-static {v0}, Lcom/eventgenie/android/fragments/TaskFragment;->access$000(Lcom/eventgenie/android/fragments/TaskFragment;)Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/eventgenie/android/fragments/TaskFragment$FragmentAsyncTask;->this$0:Lcom/eventgenie/android/fragments/TaskFragment;

    # getter for: Lcom/eventgenie/android/fragments/TaskFragment;->mTaskCallBacks:Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;
    invoke-static {v0}, Lcom/eventgenie/android/fragments/TaskFragment;->access$000(Lcom/eventgenie/android/fragments/TaskFragment;)Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/eventgenie/android/fragments/TaskFragment$TaskCallBacks;->onPostExecute(Ljava/lang/Object;)V

    .line 112
    :cond_0
    return-void
.end method
