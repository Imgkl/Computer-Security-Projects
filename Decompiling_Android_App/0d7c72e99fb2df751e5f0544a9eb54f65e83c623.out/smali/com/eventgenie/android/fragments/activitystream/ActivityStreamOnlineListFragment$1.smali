.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityStreamOnlineListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    const-string v1, "com.eventgenie.android.EXTRA_ENTITIES_TO_SYNC"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 117
    .local v0, "syncedEntities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "favouriteActivityStreamPosts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # invokes: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->forceRefreshFavouritePostsFromDb()V
    invoke-static {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$000(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)V

    .line 121
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->postsArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$100(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->postsArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$100(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    # invokes: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->updateFavouritePosts(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$200(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;Ljava/util/List;)V

    .line 123
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;
    invoke-static {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$300(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->notifyDataSetChanged()V

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->myPostsArray:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$400(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->myPostsArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$400(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    # invokes: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->updateFavouritePosts(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$200(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;Ljava/util/List;)V

    .line 127
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;
    invoke-static {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$300(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->notifyDataSetChanged()V

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;
    invoke-static {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$500(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->FAV:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    if-ne v1, v2, :cond_2

    .line 131
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$1;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->startPullToRefreshLiveSync(Z)V

    .line 135
    .end local v0    # "syncedEntities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method
