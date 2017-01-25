.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityStreamDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadCommentsAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Void;",
        "Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/genie_connect/common/db/model/ActivityStreamComment;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Long;",
            ")",
            "Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamComment;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 252
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 253
    .local v0, "postId":Ljava/lang/Long;
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    const-class v3, Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;

    .line 255
    .local v1, "repo":Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;
    invoke-virtual {v1, v0}, Lcom/genie_connect/android/repository/ActivityStreamCommentRepository;->getCommentsForPost(Ljava/lang/Long;)Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 242
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->doInBackground([Ljava/lang/Long;)Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamComment;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;, "Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent<Ljava/util/List<Lcom/genie_connect/common/db/model/ActivityStreamComment;>;>;"
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 261
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 298
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$300(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 267
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;->isSuccesful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCommentsErrorText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$400(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    invoke-virtual {p1}, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 274
    .local v0, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/model/ActivityStreamComment;>;"
    new-instance v2, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask$1;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask$1;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 284
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    invoke-virtual {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->wrapEntities(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 285
    .local v1, "wrappers":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/EntityWrapper;>;"
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mAdapter:Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$200(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->append(Ljava/util/Collection;)V

    goto :goto_0

    .line 290
    .end local v0    # "comments":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/model/ActivityStreamComment;>;"
    .end local v1    # "wrappers":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/EntityWrapper;>;"
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCommentsErrorText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$400(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCommentsErrorText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$400(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    sget v4, Lcom/eventgenie/android/R$string;->message_activity_stream_no_comments:I

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCommentsErrorText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$400(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mCommentsErrorText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$400(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    sget v4, Lcom/eventgenie/android/R$string;->message_activity_stream_comments_error:I

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 242
    check-cast p1, Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->onPostExecute(Lcom/genie_connect/android/net/container/gson/NetworkResultEntityContent;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mAdapter:Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;
    invoke-static {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$200(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/entity/EntityWrapperAdapter;->clear()V

    .line 247
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment$LoadCommentsAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;->access$300(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamDetailsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 248
    return-void
.end method
