.class Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;
.super Lcom/commonsware/cwac/endless/EndlessAdapter;
.source "ActivityStreamOnlineListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field deleteOthers:Z

.field newPosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamPost;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;Landroid/widget/ListAdapter;)V
    .locals 1
    .param p2, "x0"    # Landroid/widget/ListAdapter;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-direct {p0, p2}, Lcom/commonsware/cwac/endless/EndlessAdapter;-><init>(Landroid/widget/ListAdapter;)V

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->deleteOthers:Z

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->newPosts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected appendCachedData()V
    .locals 6

    .prologue
    .line 311
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->postsArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$100(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->newPosts:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 312
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->newPosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/model/ActivityStreamPost;

    .line 313
    .local v1, "newPost":Lcom/genie_connect/common/db/model/ActivityStreamPost;
    invoke-virtual {v1}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getIsFavourite()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->favPostsArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$800(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_1
    invoke-virtual {v1}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getAuthorId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->authorVisitorId:J
    invoke-static {v4}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$900(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->myPostsArray:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$400(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 321
    .end local v1    # "newPost":Lcom/genie_connect/common/db/model/ActivityStreamPost;
    :cond_2
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;
    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$300(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->notifyDataSetChanged()V

    .line 322
    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->newPosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    # += operator for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->offset:I
    invoke-static {v2, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$1012(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;I)I

    .line 323
    return-void
.end method

.method protected cacheInBackground()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 327
    const/16 v1, 0x14

    .line 329
    .local v1, "jsonLimit":I
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$500(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    move-result-object v3

    sget-object v5, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->FAV:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$500(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    move-result-object v3

    sget-object v5, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->MINE:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    if-ne v3, v5, :cond_1

    .line 330
    :cond_0
    mul-int/lit8 v1, v1, 0x14

    .line 333
    :cond_1
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    iget-object v5, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->offset:I
    invoke-static {v5}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$1000(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)I

    move-result v5

    iget-boolean v6, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->deleteOthers:Z

    # invokes: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->syncPosts(IIZ)Lorg/json/JSONArray;
    invoke-static {v3, v1, v5, v6}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$600(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;IIZ)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods;->parsePostsFromJSON(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->newPosts:Ljava/util/ArrayList;

    .line 336
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    iget-object v5, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->newPosts:Ljava/util/ArrayList;

    # invokes: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->updateFavouritePosts(Ljava/util/List;)V
    invoke-static {v3, v5}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$200(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;Ljava/util/List;)V

    .line 338
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$500(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    move-result-object v3

    sget-object v5, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->FAV:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # invokes: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getFavouritePostIds()Ljava/util/List;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$1300(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 339
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Label;->NO_FAVOURITES_AVAILABLE:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v3, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "label":Ljava/lang/String;
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 341
    iget-object v5, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v5, v2, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->setupEmptyViewForNoFavs(Ljava/lang/String;Landroid/widget/TextView;)Landroid/view/View;

    :goto_0
    move v3, v4

    .line 379
    .end local v2    # "label":Ljava/lang/String;
    :goto_1
    return v3

    .line 343
    .restart local v2    # "label":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    sget v6, Lcom/eventgenie/android/R$string;->message_you_have_not_added_any_fav_activity_stream_posts:I

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v5, v6, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->setupEmptyViewForNoFavs(ILandroid/widget/TextView;)Landroid/view/View;

    goto :goto_0

    .line 348
    .end local v2    # "label":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->newPosts:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->newPosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    .line 349
    :cond_4
    const-string v3, "^ ActivityStreamOnlineListFragment cacheInBackground false no posts"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 350
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$500(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    move-result-object v3

    sget-object v5, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->FAV:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    if-ne v3, v5, :cond_6

    .line 351
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Label;->NO_FAVOURITES_AVAILABLE:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v3, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .restart local v2    # "label":Ljava/lang/String;
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 353
    iget-object v5, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v5, v2, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->setupEmptyViewForNoFavs(Ljava/lang/String;Landroid/widget/TextView;)Landroid/view/View;

    .end local v2    # "label":Ljava/lang/String;
    :goto_2
    move v3, v4

    .line 366
    goto :goto_1

    .line 355
    .restart local v2    # "label":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    sget v6, Lcom/eventgenie/android/R$string;->message_you_have_not_added_any_fav_activity_stream_posts:I

    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v5, v6, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->setupEmptyViewForNoFavs(ILandroid/widget/TextView;)Landroid/view/View;

    goto :goto_2

    .line 358
    .end local v2    # "label":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    # getter for: Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;
    invoke-static {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->access$500(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    move-result-object v3

    sget-object v5, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->MINE:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    if-ne v3, v5, :cond_7

    .line 359
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    sget v6, Lcom/eventgenie/android/R$string;->message_you_have_not_created_any_activity_stream_posts:I

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v4

    .line 361
    goto/16 :goto_1

    .line 364
    :cond_7
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    sget v6, Lcom/eventgenie/android/R$string;->message_activity_stream_no_posts:I

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 370
    :cond_8
    :try_start_0
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v4}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->newPosts:Ljava/util/ArrayList;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v7}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods;->persistActivityStreamPosts(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/util/ArrayList;ZLjava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_3
    const-string v3, "^ ActivityStreamOnlineListFragment cacheInBackground true"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 379
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 374
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method protected getPendingView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "arg0"    # Landroid/view/ViewGroup;

    .prologue
    .line 385
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;->this$0:Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    invoke-virtual {v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_endless:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 388
    .local v0, "row":Landroid/view/View;
    return-object v0
.end method
