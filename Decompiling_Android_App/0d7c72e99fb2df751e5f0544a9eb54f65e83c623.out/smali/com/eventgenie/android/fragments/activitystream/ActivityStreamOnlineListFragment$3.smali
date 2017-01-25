.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$3;
.super Ljava/lang/Object;
.source "ActivityStreamOnlineListFragment.java"

# interfaces
.implements Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->setFavourite(Ljava/lang/Long;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

.field final synthetic val$postId:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$3;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    iput-object p2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$3;->val$postId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public favouritingFailed()V
    .locals 3

    .prologue
    .line 707
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$3;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$3;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    sget v2, Lcom/eventgenie/android/R$string;->webview_error_title_you_are_currently_offline:I

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 711
    return-void
.end method

.method public favouritingFinished(Z)V
    .locals 5
    .param p1, "isFavourited"    # Z

    .prologue
    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "favoritedPost":Lcom/genie_connect/common/db/model/ActivityStreamPost;
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$3;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->postsArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$100(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/model/ActivityStreamPost;

    .line 689
    .local v2, "post":Lcom/genie_connect/common/db/model/ActivityStreamPost;
    iget-object v3, v2, Lcom/genie_connect/common/db/model/ActivityStreamPost;->id:Ljava/lang/Long;

    iget-object v4, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$3;->val$postId:Ljava/lang/Long;

    if-ne v3, v4, :cond_0

    .line 690
    move-object v0, v2

    goto :goto_0

    .line 693
    .end local v2    # "post":Lcom/genie_connect/common/db/model/ActivityStreamPost;
    :cond_1
    if-eqz v0, :cond_2

    .line 694
    if-eqz p1, :cond_3

    .line 695
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$3;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->favPostsArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$800(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->setIsFavourite(Ljava/lang/Boolean;)V

    .line 701
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$3;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$300(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->notifyDataSetChanged()V

    .line 703
    :cond_2
    return-void

    .line 698
    :cond_3
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$3;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->favPostsArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$800(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
