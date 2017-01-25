.class public Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;
.source "ActivityStreamCursorListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;
.implements Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;
.implements Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;
.implements Lcom/eventgenie/android/fragments/base/ReplacableFragment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;",
        "Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;",
        "Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;",
        "Lcom/eventgenie/android/fragments/base/ReplacableFragment;"
    }
.end annotation


# static fields
.field public static final EXTRA_ENTITYID:Ljava/lang/String; = "EXTRA_ENTITYID"

.field public static final EXTRA_ENTITYTYPE:Ljava/lang/String; = "EXTRA_ENTITYTYPE"

.field public static final EXTRA_MODE:Ljava/lang/String; = "EXTRA_MODE"

.field public static final TAG:Ljava/lang/String; = "ActivityStreamListFragment"


# instance fields
.field private authorVisitorId:J

.field private flipper:Landroid/widget/ViewFlipper;

.field private mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;

.field private mDisplayMode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

.field private mPullToRefreshLayout:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;-><init>()V

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->authorVisitorId:J

    return-void
.end method

.method private getHostParent()Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;

    .line 168
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;

    goto :goto_0
.end method

.method private setEmptyText()V
    .locals 3

    .prologue
    .line 268
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mDisplayMode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    sget-object v2, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->FAV:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    if-ne v1, v2, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->NO_FAVOURITES_AVAILABLE:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->setupEmptyViewForNoFavs(Ljava/lang/String;Landroid/widget/TextView;)Landroid/view/View;

    .line 283
    .end local v0    # "label":Ljava/lang/String;
    :goto_0
    return-void

    .line 273
    .restart local v0    # "label":Ljava/lang/String;
    :cond_0
    sget v2, Lcom/eventgenie/android/R$string;->message_you_have_not_added_any_fav_activity_stream_posts:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->setupEmptyViewForNoFavs(ILandroid/widget/TextView;)Landroid/view/View;

    goto :goto_0

    .line 276
    .end local v0    # "label":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mDisplayMode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    sget-object v2, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->MINE:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    if-ne v1, v2, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/eventgenie/android/R$string;->message_you_have_not_created_any_activity_stream_posts:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/eventgenie/android/R$string;->message_activity_stream_no_posts:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    new-instance v0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ILcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;)V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;

    .line 90
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mDisplayMode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    .line 100
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->setEmptyText()V

    .line 102
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getActivityStream()Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getActivityStream()Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;->isSponsorDisplayed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity;->showAdvert()V

    .line 110
    :cond_1
    return-void

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mDisplayMode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->ALL:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mDisplayMode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    goto :goto_0
.end method

.method public onClickAuthor(I)V
    .locals 4
    .param p1, "cursorPosition"    # I

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getHostParent()Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;

    move-result-object v0

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;->openActivityStreamDetailsActivity(J)V

    .line 160
    return-void
.end method

.method public onClickCard(J)V
    .locals 1
    .param p1, "cursorPosition"    # J

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getHostParent()Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;->openActivityStreamDetailsActivity(J)V

    .line 155
    return-void
.end method

.method public onClickFavourite(ZJ)V
    .locals 0
    .param p1, "currentState"    # Z
    .param p2, "id"    # J

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->reloadData()V

    .line 175
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 15
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->flipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 124
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mDisplayMode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    sget-object v1, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->ENTITY:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    if-ne v0, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_ENTITYTYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 126
    .local v3, "entityType":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_ENTITYID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 127
    .local v4, "entityId":J
    new-instance v0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)V

    .line 135
    .end local v3    # "entityType":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v4    # "entityId":J
    :goto_0
    return-object v0

    .line 131
    :cond_0
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v6

    .line 132
    .local v6, "visitorRecord":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-eqz v6, :cond_1

    .line 133
    invoke-virtual {v6}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->authorVisitorId:J

    .line 135
    :cond_1
    new-instance v7, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v9

    const-wide/16 v10, -0x1

    iget-wide v12, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->authorVisitorId:J

    iget-object v14, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mDisplayMode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    invoke-direct/range {v7 .. v14}, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;JJLcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;)V

    move-object v0, v7

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    sget v1, Lcom/eventgenie/android/R$layout;->fragment_stream_main:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "rootView":Landroid/view/View;
    sget v1, Lcom/eventgenie/android/R$id;->flipper:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->flipper:Landroid/widget/ViewFlipper;

    .line 117
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onDestroy()V

    .line 180
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->flipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 149
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;

    invoke-virtual {v0, p2}, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 150
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mAdapter:Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 144
    return-void
.end method

.method public onRefreshStarted(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getHostParent()Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/eventgenie/android/activities/activitystream/ActivityStreamHost;->switchToOnline()V

    .line 264
    iget-object v0, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mPullToRefreshLayout:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setRefreshComplete()V

    .line 265
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 234
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onResume()V

    .line 235
    return-void
.end method

.method public onShare(J)V
    .locals 9
    .param p1, "id"    # J

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/eventgenie/android/activities/base/GenieBaseActivity;

    invoke-virtual {v4}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    .line 240
    .local v0, "namespace":J
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

    .line 241
    const-string v4, "%s/genieintents;appid=%saction=view;entitynamespace=activitystreamposts;entityId=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    .line 245
    .local v2, "shareString":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    .local v3, "sharingIntent":Landroid/content/Intent;
    const-string/jumbo v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$string;->share:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->startActivity(Landroid/content/Intent;)V

    .line 253
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    sget-object v5, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1, p2}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyShare(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 254
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I

    .prologue
    .line 258
    const-string v0, "^ ACTIVITYSTREAMLISTFRAGMENT onStateChanged"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 259
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

    .line 184
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v2, p1

    .line 187
    check-cast v2, Landroid/view/ViewGroup;

    .line 190
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    new-instance v3, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mPullToRefreshLayout:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    .line 191
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mPullToRefreshLayout:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$color;->light_gray:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setBackgroundColor(I)V

    .line 194
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh;->from(Landroid/app/Activity;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v3

    invoke-virtual {v3, v2}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->insertLayoutInto(Landroid/view/ViewGroup;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->theseChildrenArePullable([Landroid/view/View;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v3

    invoke-virtual {v3, p0}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->listener(Luk/co/senab/actionbarpulltorefresh/library/listeners/OnRefreshListener;)Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mPullToRefreshLayout:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v3, v4}, Luk/co/senab/actionbarpulltorefresh/library/ActionBarPullToRefresh$SetupWizard;->setup(Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;)V

    .line 208
    iget-object v3, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mPullToRefreshLayout:Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;

    invoke-virtual {v3, p0}, Luk/co/senab/actionbarpulltorefresh/library/PullToRefreshLayout;->setHeaderViewListener(Luk/co/senab/actionbarpulltorefresh/library/listeners/HeaderViewListener;)V

    .line 210
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 211
    .local v0, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 212
    const-string v3, "It\'s empty!"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {v0, v8, v7, v8, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 214
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 216
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 220
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 224
    return-void
.end method

.method public reloadData()V
    .locals 3

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 229
    return-void
.end method

.method public setDisplayMode(Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;)V
    .locals 3
    .param p1, "displayMode"    # Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->mDisplayMode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    .line 311
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 313
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->setEmptyText()V

    .line 315
    :cond_0
    return-void
.end method

.method protected setupEmptyViewForNoFavs(ILandroid/widget/TextView;)Landroid/view/View;
    .locals 1
    .param p1, "strId"    # I
    .param p2, "view"    # Landroid/widget/TextView;

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->setupEmptyViewForNoFavs(Ljava/lang/String;Landroid/widget/TextView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected setupEmptyViewForNoFavs(Ljava/lang/String;Landroid/widget/TextView;)Landroid/view/View;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "emptyView"    # Landroid/widget/TextView;

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/activitystream/ActivityStreamCursorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/genie_connect/android/utils/string/StringUtils;->addDrawableSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    return-object p2
.end method
