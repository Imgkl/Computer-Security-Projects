.class public Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;
.super Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;
.source "LeaderboardScopedFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field private firstRun:Z

.field private mAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->firstRun:Z

    return-void
.end method

.method public static newInstance(Ljava/lang/String;JJ)Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;
    .locals 5
    .param p0, "entity"    # Ljava/lang/String;
    .param p1, "id"    # J
    .param p3, "namespace"    # J

    .prologue
    .line 118
    new-instance v1, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;-><init>()V

    .line 119
    .local v1, "frag":Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v0, "args":Landroid/os/Bundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ LEADERBOARD: New Leaderboard for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 123
    const-string v2, "param_entity"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "param_entity_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 125
    const-string v2, "param_namespace"

    invoke-virtual {v0, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 127
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->setArguments(Landroid/os/Bundle;)V

    .line 128
    return-object v1
.end method

.method private updateUi()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->isViewReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->setListShown(Z)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    sget v0, Lcom/eventgenie/android/R$string;->no_data:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->initLeaderboard()V

    .line 56
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 9
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getmNamespace()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getEntity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getEntityId()J

    move-result-wide v5

    const-string v7, "force_from_cache_extra"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardScopedLoader;-><init>(Landroid/app/Activity;JLjava/lang/String;JZ)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;>;"
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getEntity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getEntityId()J

    move-result-wide v4

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/adapters/gamification/GamificationAdapterManager;->getLeaderboardScopedAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Ljava/util/List;Ljava/lang/String;J)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 77
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->updateUi()V

    .line 78
    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/PlayerGameGsonModel;>;>;"
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->onResume()V

    .line 61
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->populate()V

    .line 62
    return-void
.end method

.method public populate()V
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-boolean v0, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->firstRun:Z

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->refreshList(Z)V

    .line 84
    return-void
.end method

.method public refreshList(Z)V
    .locals 3
    .param p1, "forceFromCache"    # Z

    .prologue
    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "force_from_cache_extra"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getLoaderId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v1

    if-nez v1, :cond_0

    .line 91
    const-string v1, "^ LEADERBOARD: Loader does not exist. Creating it"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->firstRun:Z

    .line 93
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getLoaderId()I

    move-result v2

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v1, "^ LEADERBOARD: Loader exists. Restarting it"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getLoaderId()I

    move-result v2

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->forceLoad()V

    goto :goto_0
.end method

.method protected stopLoader()V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardScopedFragment;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 103
    return-void
.end method
