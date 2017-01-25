.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityStreamOnlineListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetNewPostsArrayAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/genie_connect/common/db/model/ActivityStreamPost;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 138
    check-cast p1, [Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->doInBackground([Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "params"    # [Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamPost;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 144
    :try_start_0
    iget-object v4, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v5}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;->getJsonRequestLimit()I

    move-result v5

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;->getJsonOffset()I

    move-result v6

    const/4 v7, 0x1

    # invokes: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->syncPosts(IIZ)Lorg/json/JSONArray;
    invoke-static {v4, v5, v6, v7}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$600(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;IIZ)Lorg/json/JSONArray;

    move-result-object v2

    .line 146
    .local v2, "result":Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 149
    invoke-static {v2}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods;->parsePostsFromJSON(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 152
    .local v1, "posts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/common/db/model/ActivityStreamPost;>;"
    iget-object v4, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # invokes: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->updateFavouritePosts(Ljava/util/List;)V
    invoke-static {v4, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$200(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :try_start_1
    iget-object v4, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v4}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v5}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;->deleteOtherOnPersist()Z

    move-result v6

    iget-object v7, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v7}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v4, v5, v1, v6, v7}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods;->persistActivityStreamPosts(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/util/ArrayList;ZLjava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    .end local v1    # "posts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/common/db/model/ActivityStreamPost;>;"
    .end local v2    # "result":Lorg/json/JSONArray;
    :goto_0
    return-object v1

    .line 160
    .restart local v1    # "posts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/common/db/model/ActivityStreamPost;>;"
    .restart local v2    # "result":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "^ ActivityStreamOnlineListFragment persistActivityStreamPosts failed"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v3

    .line 163
    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "posts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/common/db/model/ActivityStreamPost;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 176
    .end local v2    # "result":Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    .line 177
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "^ ActivityStreamOnlineListFragment GetPosts returned null"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v3

    .line 179
    goto :goto_0

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "result":Lorg/json/JSONArray;
    :cond_1
    const-string v4, "^ ActivityStreamOnlineListFragment GetPosts returned null"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    move-object v1, v3

    .line 182
    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # invokes: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->onInitialLiveSyncFail()V
    invoke-static {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$700(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)V

    .line 188
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 138
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamPost;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/genie_connect/common/db/model/ActivityStreamPost;>;"
    if-nez p1, :cond_0

    .line 193
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # invokes: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->onInitialLiveSyncFail()V
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$700(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)V

    .line 213
    :goto_0
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mPullToRefreshLayout:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$1200(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    move-result-object v2

    invoke-virtual {v2}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setRefreshComplete()V

    .line 215
    return-void

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->postsArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$100(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 197
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->myPostsArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$400(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 198
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->favPostsArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$800(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 199
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->postsArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$100(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 200
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/model/ActivityStreamPost;

    .line 201
    .local v1, "resultItem":Lcom/genie_connect/common/db/model/ActivityStreamPost;
    invoke-virtual {v1}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getIsFavourite()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->favPostsArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$800(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_2
    invoke-virtual {v1}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getAuthorId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->authorVisitorId:J
    invoke-static {v4}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$900(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->myPostsArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$400(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    .end local v1    # "resultItem":Lcom/genie_connect/common/db/model/ActivityStreamPost;
    :cond_3
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->postsArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$100(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    # += operator for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->offset:I
    invoke-static {v2, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$1012(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;I)I

    .line 210
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$300(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->notifyDataSetChanged()V

    .line 211
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    const/4 v3, 0x0

    # invokes: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->showSpinner(Z)V
    invoke-static {v2, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$1100(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;Z)V

    goto/16 :goto_0
.end method
