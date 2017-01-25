.class public Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;
.source "ActivityStreamOnlineListFragment.java"

# interfaces
.implements Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;
.implements Lcom/eventgenie/android/ui/RefreshableListView$onListRefreshListener;
.implements Lcom/eventgenie/android/ui/RefreshableListView$onListLoadMoreListener;
.implements Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;
.implements Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;
.implements Lcom/eventgenie/android/fragments/base/ReplacableFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$4;,
        Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;
    }
.end annotation


# static fields
.field public static final EXTRA_ENTITYID:Ljava/lang/String; = "EXTRA_ENTITYID"

.field public static final EXTRA_ENTITYTYPE:Ljava/lang/String; = "EXTRA_ENTITYTYPE"

.field public static final EXTRA_MODE:Ljava/lang/String; = "EXTRA_MODE"

.field private static final JSON_REQUEST_LIMIT:I = 0x14

.field public static final TAG:Ljava/lang/String; = "ActivityStreamListFragment"


# instance fields
.field private authorVisitorId:J

.field private endlessAdapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

.field private favPostsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamPost;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

.field private mDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloader;

.field private mFavouritePosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLssReceiver:Landroid/content/BroadcastReceiver;

.field private mPullToRefreshLayout:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

.field private mainPanel:Landroid/view/View;

.field private mode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

.field private myPostsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamPost;",
            ">;"
        }
    .end annotation
.end field

.field private offset:I

.field private postsArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamPost;",
            ">;"
        }
    .end annotation
.end field

.field private spinnerPanel:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;-><init>()V

    .line 110
    new-instance v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$1;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mLssReceiver:Landroid/content/BroadcastReceiver;

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->offset:I

    .line 242
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->authorVisitorId:J

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->forceRefreshFavouritePostsFromDb()V

    return-void
.end method

.method static synthetic access$100(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->postsArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    .prologue
    .line 102
    iget v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->offset:I

    return v0
.end method

.method static synthetic access$1012(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;I)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iget v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->offset:I

    return v0
.end method

.method static synthetic access$1100(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->showSpinner(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mPullToRefreshLayout:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getFavouritePostIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->updateFavouritePosts(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->myPostsArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    return-object v0
.end method

.method static synthetic access$600(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;IIZ)Lorg/json/JSONArray;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->syncPosts(IIZ)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->onInitialLiveSyncFail()V

    return-void
.end method

.method static synthetic access$800(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->favPostsArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->authorVisitorId:J

    return-wide v0
.end method

.method private forceRefreshFavouritePostsFromDb()V
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mFavouritePosts:Ljava/util/List;

    .line 590
    return-void
.end method

.method private getFavouritePostIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mFavouritePosts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 594
    const-class v0, Lcom/genie_connect/android/repository/FavouriteActivityStreamPostRepository;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/FavouriteActivityStreamPostRepository;

    invoke-virtual {v0}, Lcom/genie_connect/android/repository/FavouriteActivityStreamPostRepository;->getFavouritedPostIds()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mFavouritePosts:Ljava/util/List;

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mFavouritePosts:Ljava/util/List;

    return-object v0
.end method

.method private getHostParent()Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;
    .locals 1

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;

    .line 420
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;

    goto :goto_0
.end method

.method private onInitialLiveSyncFail()V
    .locals 3

    .prologue
    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mPullToRefreshLayout:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setRefreshComplete()V

    .line 458
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->webview_error_title_we_were_unable_to_access_the_server:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 470
    :goto_0
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getHostParent()Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;->switchToOffline()V

    .line 474
    :goto_1
    return-void

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->webview_error_title_you_are_currently_offline:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private setFavourite(Ljava/lang/Long;Z)V
    .locals 6
    .param p1, "postId"    # Ljava/lang/Long;
    .param p2, "shouldFav"    # Z

    .prologue
    .line 680
    const-class v1, Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/bl/favourites/FavouriteManager;

    .line 681
    .local v0, "favManager":Lcom/genie_connect/android/bl/favourites/FavouriteManager;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$3;

    invoke-direct {v2, p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$3;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;Ljava/lang/Long;)V

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/bl/favourites/FavouriteManager;->setEntityFavourited(Landroid/support/v4/app/FragmentActivity;Lcom/genie_connect/android/bl/favourites/FavouriteUpdatedListener;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;Z)V

    .line 717
    return-void
.end method

.method private showSpinner(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 219
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mainPanel:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->spinnerPanel:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 221
    return-void

    :cond_0
    move v0, v2

    .line 219
    goto :goto_0

    :cond_1
    move v2, v1

    .line 220
    goto :goto_1
.end method

.method private syncPosts(IIZ)Lorg/json/JSONArray;
    .locals 12
    .param p1, "jsonLimit"    # I
    .param p2, "jsonOffset"    # I
    .param p3, "deleteOthers"    # Z

    .prologue
    .line 258
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    sget-object v1, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->ENTITY:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    if-ne v0, v1, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_ENTITYTYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 261
    .local v7, "entityType":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_ENTITYID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 263
    .local v8, "entityId":J
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getDownloader()Lcom/genie_connect/android/net/providers/NetworkDownloader;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v9}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods;->doActivityStreamPostSync(Landroid/content/Context;Lcom/genie_connect/android/net/providers/NetworkDownloader;IIZLjava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Lorg/json/JSONArray;

    move-result-object v0

    .line 269
    .end local v7    # "entityType":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v8    # "entityId":J
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getDownloader()Lcom/genie_connect/android/net/providers/NetworkDownloader;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getActivityStream()Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;->hideEntityRelatedPosts()Z

    move-result v6

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods;->doActivityStreamPostSync(Landroid/content/Context;Lcom/genie_connect/android/net/providers/NetworkDownloader;IIZLjava/lang/Long;Z)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0
.end method

.method private updateFavouritePosts(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/common/db/model/ActivityStreamPost;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p1, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/common/db/model/ActivityStreamPost;>;"
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getFavouritePostIds()Ljava/util/List;

    move-result-object v0

    .line 604
    .local v0, "favPostIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/model/ActivityStreamPost;

    .line 605
    .local v2, "post":Lcom/genie_connect/common/db/model/ActivityStreamPost;
    iget-object v3, v2, Lcom/genie_connect/common/db/model/ActivityStreamPost;->id:Ljava/lang/Long;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->setIsFavourite(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 607
    .end local v2    # "post":Lcom/genie_connect/common/db/model/ActivityStreamPost;
    :cond_0
    return-void
.end method


# virtual methods
.method public LoadMore(Lcom/eventgenie/android/ui/RefreshableListView;)V
    .locals 0
    .param p1, "list"    # Lcom/eventgenie/android/ui/RefreshableListView;

    .prologue
    .line 255
    return-void
.end method

.method public Refresh(Lcom/eventgenie/android/ui/RefreshableListView;)V
    .locals 0
    .param p1, "list"    # Lcom/eventgenie/android/ui/RefreshableListView;

    .prologue
    .line 579
    return-void
.end method

.method public declared-synchronized getDownloader()Lcom/genie_connect/android/net/providers/NetworkDownloader;
    .locals 2

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloader;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloader;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mDownloader:Lcom/genie_connect/android/net/providers/NetworkDownloader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    const/4 v7, 0x1

    .line 282
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 283
    const-string v0, "^ ActivityStreamOnlineListFragment onActivityCreated() "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->postsArray:Ljava/util/ArrayList;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->myPostsArray:Ljava/util/ArrayList;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->favPostsArray:Ljava/util/ArrayList;

    .line 289
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    .line 295
    :goto_0
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 297
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 300
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "favouriteActivityStreamPosts"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V

    .line 303
    new-instance v0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->postsArray:Ljava/util/ArrayList;

    move v3, v2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;)V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

    .line 305
    new-instance v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

    invoke-direct {v0, p0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$2;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->endlessAdapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    .line 392
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->endlessAdapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 393
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 394
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getActivityStream()Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getActivityStream()Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;->isSponsorDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->showAdvert()V

    .line 401
    :cond_0
    invoke-virtual {p0, v7}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->startPullToRefreshLiveSync(Z)V

    .line 402
    return-void

    .line 292
    .end local v6    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    sget-object v0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->ALL:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    goto :goto_0
.end method

.method public onClickAuthor(I)V
    .locals 4
    .param p1, "cursorPosition"    # I

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getHostParent()Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;

    move-result-object v0

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;->openActivityStreamDetailsActivity(J)V

    .line 407
    return-void
.end method

.method public onClickCard(J)V
    .locals 1
    .param p1, "cursorPosition"    # J

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getHostParent()Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;->openActivityStreamDetailsActivity(J)V

    .line 412
    return-void
.end method

.method public onClickFavourite(ZJ)V
    .locals 6
    .param p1, "currentState"    # Z
    .param p2, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 425
    iget-object v4, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->postsArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/model/ActivityStreamPost;

    .line 426
    .local v2, "post":Lcom/genie_connect/common/db/model/ActivityStreamPost;
    iget-object v4, v2, Lcom/genie_connect/common/db/model/ActivityStreamPost;->id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-nez v4, :cond_0

    .line 427
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v4

    if-nez v4, :cond_2

    .line 428
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 429
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "is_home"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    const/16 v3, 0x1389

    invoke-virtual {p0, v1, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 438
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "post":Lcom/genie_connect/common/db/model/ActivityStreamPost;
    :cond_1
    :goto_0
    return-void

    .line 433
    .restart local v2    # "post":Lcom/genie_connect/common/db/model/ActivityStreamPost;
    :cond_2
    iget-object v4, v2, Lcom/genie_connect/common/db/model/ActivityStreamPost;->id:Ljava/lang/Long;

    if-nez p1, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-direct {p0, v4, v3}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->setFavourite(Ljava/lang/Long;Z)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 443
    sget v1, Lcom/eventgenie/android/R$layout;->fragment_stream_main:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 445
    .local v0, "rootView":Landroid/view/View;
    sget v1, Lcom/eventgenie/android/R$id;->spinnerPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->spinnerPanel:Landroid/view/View;

    .line 446
    sget v1, Lcom/eventgenie/android/R$id;->mainPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mainPanel:Landroid/view/View;

    .line 447
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 452
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onDestroy()V

    .line 453
    return-void
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->startPullToRefreshLiveSync(Z)V

    .line 480
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 484
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onResume()V

    .line 485
    return-void
.end method

.method public onShare(J)V
    .locals 9
    .param p1, "id"    # J

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    instance-of v4, v4, Lcom/eventgenie/android/activities/base/GenieAbcActivity;

    if-eqz v4, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/activities/base/GenieAbcActivity;

    invoke-virtual {v4}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    .line 501
    .local v0, "namespace":J
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ ACTIVITYSTREAMLISTFRAGMENT onShare: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 502
    const-string v4, "%s/genieintents;appid=%saction=view;entitynamespace=activitystreamposts;entityId=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/genie_connect/android/net/providers/NetworkBase;->getRestServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "shareString":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v3, "sharingIntent":Landroid/content/Intent;
    const-string/jumbo v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->share:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->startActivity(Landroid/content/Intent;)V

    .line 514
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1, p2}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyShare(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 515
    return-void

    .line 494
    .end local v0    # "namespace":J
    .end local v2    # "shareString":Ljava/lang/String;
    .end local v3    # "sharingIntent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    instance-of v4, v4, Lcom/eventgenie/android/activities/base/GenieBaseActivity;

    if-eqz v4, :cond_1

    .line 495
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/activities/base/GenieBaseActivity;

    invoke-virtual {v4}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    .restart local v0    # "namespace":J
    goto :goto_0

    .line 497
    .end local v0    # "namespace":J
    :cond_1
    const-string v4, "^ ACTIVITYSTREAMLISTFRAGMENT onShare: the activity is not of type GenieAbcActivity nor GenieBaseActivity"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 498
    const-wide/16 v0, 0x0

    .restart local v0    # "namespace":J
    goto/16 :goto_0
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I

    .prologue
    .line 519
    const-string v0, "^ ACTIVITYSTREAMLISTFRAGMENT onStateChanged"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x11

    const/16 v8, 0xf

    const/4 v7, 0x0

    .line 525
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v2, p1

    .line 528
    check-cast v2, Landroid/view/ViewGroup;

    .line 531
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    new-instance v3, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mPullToRefreshLayout:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .line 532
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mPullToRefreshLayout:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$color;->light_gray:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setBackgroundColor(I)V

    .line 535
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v3

    invoke-virtual {v3, v2}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->insertLayoutInto(Landroid/view/ViewGroup;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->theseChildrenArePullable([Landroid/view/View;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v3

    invoke-virtual {v3, p0}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->listener(Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mPullToRefreshLayout:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v3, v4}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->setup(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)V

    .line 549
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mPullToRefreshLayout:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v3, p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setHeaderViewListener(Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;)V

    .line 551
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 552
    .local v0, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 553
    const-string v3, "It\'s empty!"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    invoke-virtual {v0, v8, v7, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 555
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 556
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 560
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 561
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 565
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->refreshVisitorId()V

    .line 566
    return-void
.end method

.method public refreshVisitorId()V
    .locals 4

    .prologue
    .line 569
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    .line 570
    .local v0, "visitorRecord":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->authorVisitorId:J

    .line 573
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ ActivityStreamOnlineListFragment visitorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->authorVisitorId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public reloadData()V
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mFavouritePosts:Ljava/util/List;

    .line 585
    return-void
.end method

.method public setDisplayMode(Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;)V
    .locals 3
    .param p1, "newMode"    # Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    .prologue
    .line 612
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    if-eq v1, p1, :cond_0

    .line 614
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    .line 616
    sget-object v1, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$4;->$SwitchMap$com$eventgenie$android$activities$activitystream$activities$ActivitystreamActivity$DISPLAY_MODES:[I

    invoke-virtual {p1}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 637
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->endlessAdapter:Lcom/commonsware/cwac/endless/EndlessAdapter;

    invoke-virtual {v1}, Lcom/commonsware/cwac/endless/EndlessAdapter;->notifyDataSetChanged()V

    .line 640
    :cond_0
    return-void

    .line 619
    :pswitch_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->postsArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->updateData(Ljava/util/List;)V

    goto :goto_0

    .line 622
    :pswitch_1
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->NO_FAVOURITES_AVAILABLE:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 624
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->setupEmptyViewForNoFavs(Ljava/lang/String;Landroid/widget/TextView;)Landroid/view/View;

    .line 628
    :goto_1
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->favPostsArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->updateData(Ljava/util/List;)V

    goto :goto_0

    .line 626
    :cond_1
    sget v2, Lcom/eventgenie/android/R$string;->message_you_have_not_added_any_fav_activity_stream_posts:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->setupEmptyViewForNoFavs(ILandroid/widget/TextView;)Landroid/view/View;

    goto :goto_1

    .line 631
    .end local v0    # "label":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/eventgenie/android/R$string;->message_you_have_not_created_any_activity_stream_posts:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

    iget-object v2, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->myPostsArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->updateData(Ljava/util/List;)V

    goto :goto_0

    .line 616
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setupEmptyViewForNoFavs(ILandroid/widget/TextView;)Landroid/view/View;
    .locals 1
    .param p1, "strId"    # I
    .param p2, "view"    # Landroid/widget/TextView;

    .prologue
    .line 649
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->setupEmptyViewForNoFavs(Ljava/lang/String;Landroid/widget/TextView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected setupEmptyViewForNoFavs(Ljava/lang/String;Landroid/widget/TextView;)Landroid/view/View;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "emptyView"    # Landroid/widget/TextView;

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/genie_connect/android/utils/string/StringUtils;->addDrawableSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    return-object p2
.end method

.method public startPullToRefreshLiveSync(Z)V
    .locals 6
    .param p1, "flipToSpinner"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 665
    iput v5, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->offset:I

    .line 666
    if-eqz p1, :cond_0

    .line 667
    invoke-direct {p0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->showSpinner(Z)V

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->postsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 670
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->myPostsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 671
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->favPostsArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 672
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->notifyDataSetChanged()V

    .line 673
    new-instance v0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment$GetNewPostsArrayAsyncTask;-><init>(Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;)V

    new-array v1, v1, [Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;

    new-instance v2, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;

    const/16 v3, 0x14

    iget v4, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamOnlineListFragment;->offset:I

    invoke-direct {v2, v3, v4, v5}, Lcom/genie_connect/android/services/lss/LiveSyncServiceStaticMethods$GetPostsJSONRequestParams;-><init>(IIZ)V

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 676
    return-void
.end method
