.class public Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseFragment;
.source "TwitterListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/fragments/base/GenieBaseFragment;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/eventgenie/android/utils/social/NetworkResultSocial;",
        ">;"
    }
.end annotation


# static fields
.field public static final FRAGMENT_NUMBER:Ljava/lang/String; = "FRAGMENT_NUMBER"

.field public static final MODE_BOTH:I = 0x2

.field public static final MODE_EXTRA:Ljava/lang/String; = "mode"

.field public static final MODE_SEARCH:I = 0x1

.field public static final MODE_USER:I = 0x0

.field public static final PARAM_EXTRA:Ljava/lang/String; = "param"

.field public static final PARAM_EXTRA_2:Ljava/lang/String; = "param2"


# instance fields
.field private _id:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mIsViewReady:Z

.field private mListView:Lcom/markupartist/android/widget/PullToRefreshListView;

.field private mLoader:Lcom/genie_connect/android/db/loaders/TwitterLoader;

.field private mode:I

.field private param:Ljava/lang/String;

.field private param2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->param:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->param2:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mode:I

    return-void
.end method

.method private createErrorTextView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, "tv":Landroid/widget/TextView;
    sget v1, Lcom/eventgenie/android/R$string;->msg_no_network:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 138
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 139
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    return-object v0
.end method

.method private isViewReady()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mIsViewReady:Z

    return v0
.end method

.method private updateUi()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 214
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->isViewReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mListView:Lcom/markupartist/android/widget/PullToRefreshListView;

    if-nez v0, :cond_0

    .line 217
    const-string v0, "^ TwitterListFragment[%s] getListView null"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mListView:Lcom/markupartist/android/widget/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/markupartist/android/widget/PullToRefreshListView;->setVisibility(I)V

    .line 223
    const-string v0, "^ TwitterListFragment[%s] mAdapter null"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 229
    :goto_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mListView:Lcom/markupartist/android/widget/PullToRefreshListView;

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/markupartist/android/widget/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mListView:Lcom/markupartist/android/widget/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/markupartist/android/widget/PullToRefreshListView;->onRefreshComplete()V

    goto :goto_0

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mListView:Lcom/markupartist/android/widget/PullToRefreshListView;

    invoke-virtual {v0, v3}, Lcom/markupartist/android/widget/PullToRefreshListView;->setVisibility(I)V

    goto :goto_1

    .line 238
    :cond_2
    const-string v0, "^ TwitterListFragment[%s] updateUI view not ready"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected generateLoaderBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->NONE:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method protected isFavouriteList()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .param p1, "arg0"    # I
    .param p2, "b"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/eventgenie/android/utils/social/NetworkResultSocial;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    if-eqz p2, :cond_0

    .line 105
    const-string v0, "force_from_cache_extra"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 110
    .local v5, "preferCache":Z
    :goto_0
    new-instance v0, Lcom/genie_connect/android/db/loaders/TwitterLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mode:I

    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->param:Ljava/lang/String;

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->param2:Ljava/lang/String;

    iget v6, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->_id:I

    invoke-direct/range {v0 .. v6}, Lcom/genie_connect/android/db/loaders/TwitterLoader;-><init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mLoader:Lcom/genie_connect/android/db/loaders/TwitterLoader;

    .line 111
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mLoader:Lcom/genie_connect/android/db/loaders/TwitterLoader;

    return-object v0

    .line 107
    .end local v5    # "preferCache":Z
    :cond_0
    const/4 v5, 0x0

    .restart local v5    # "preferCache":Z
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 117
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 118
    const-string v2, "mode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mode:I

    .line 119
    const-string v2, "param2"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->param2:Ljava/lang/String;

    .line 120
    const-string v2, "param"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->param:Ljava/lang/String;

    .line 121
    const-string v2, "FRAGMENT_NUMBER"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->_id:I

    .line 123
    :cond_0
    new-instance v2, Lcom/markupartist/android/widget/PullToRefreshListView;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/markupartist/android/widget/PullToRefreshListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mListView:Lcom/markupartist/android/widget/PullToRefreshListView;

    .line 125
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->createErrorTextView()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mErrorTextView:Landroid/widget/TextView;

    .line 127
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 129
    .local v1, "parentLayout":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mListView:Lcom/markupartist/android/widget/PullToRefreshListView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 130
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 132
    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    iget v2, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->_id:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 146
    .local v0, "previousLoader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->abandon()V

    .line 148
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    iget v2, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->_id:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 150
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mIsViewReady:Z

    .line 151
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onDestroy()V

    .line 152
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "rowId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;

    invoke-virtual {v1}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->getUrlForTweet()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "uri":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getRawViewIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 158
    return-void
.end method

.method protected onLiveSyncCompleted()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Lcom/eventgenie/android/utils/social/NetworkResultSocial;)V
    .locals 6
    .param p2, "result"    # Lcom/eventgenie/android/utils/social/NetworkResultSocial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/eventgenie/android/utils/social/NetworkResultSocial;",
            ">;",
            "Lcom/eventgenie/android/utils/social/NetworkResultSocial;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/eventgenie/android/utils/social/NetworkResultSocial;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->getTweets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2}, Lcom/eventgenie/android/utils/social/NetworkResultSocial;->getTweets()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;J)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 179
    :goto_0
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->updateUi()V

    .line 180
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 58
    check-cast p2, Lcom/eventgenie/android/utils/social/NetworkResultSocial;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Lcom/eventgenie/android/utils/social/NetworkResultSocial;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/eventgenie/android/utils/social/NetworkResultSocial;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/eventgenie/android/utils/social/NetworkResultSocial;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 168
    invoke-direct {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->updateUi()V

    .line 169
    return-void
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->refreshTweets(Z)V

    .line 185
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mIsViewReady:Z

    .line 190
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->refreshTweets(Z)V

    .line 191
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onStart()V

    .line 192
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mListView:Lcom/markupartist/android/widget/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->mListView:Lcom/markupartist/android/widget/PullToRefreshListView;

    invoke-virtual {v0, p0}, Lcom/markupartist/android/widget/PullToRefreshListView;->setOnRefreshListener(Lcom/markupartist/android/widget/PullToRefreshListView$OnRefreshListener;)V

    .line 198
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 199
    return-void
.end method

.method public refreshTweets(Z)V
    .locals 4
    .param p1, "forceFromCache"    # Z

    .prologue
    .line 202
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 203
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "force_from_cache_extra"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget v3, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->_id:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v1

    .line 206
    .local v1, "previousLoader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->isReset()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget v3, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->_id:I

    invoke-virtual {v2, v3, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget v3, p0, Lcom/eventgenie/android/activities/newsandsocial/TwitterListFragment;->_id:I

    invoke-virtual {v2, v3, v0, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/content/Loader;->forceLoad()V

    goto :goto_0
.end method
