.class public Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;
.super Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;
.source "LeaderboardGlobalFragment.java"

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
        "Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;",
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
    .line 48
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->firstRun:Z

    return-void
.end method

.method public static newInstance(JJ)Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;
    .locals 4
    .param p0, "id"    # J
    .param p2, "namespace"    # J

    .prologue
    .line 120
    new-instance v1, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;-><init>()V

    .line 121
    .local v1, "frag":Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, "args":Landroid/os/Bundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ LEADERBOARD: New Leaderboard for apps/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 125
    const-string v2, "param_entity"

    const-string v3, "apps"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v2, "param_entity_id"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 127
    const-string v2, "param_namespace"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 129
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->setArguments(Landroid/os/Bundle;)V

    .line 130
    return-object v1
.end method

.method private updateUi()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->isViewReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->setListShown(Z)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 56
    sget v0, Lcom/eventgenie/android/R$string;->no_data:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->initLeaderboard()V

    .line 58
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8
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
            "Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getmNamespace()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getEntityId()J

    move-result-wide v4

    const-string v6, "force_from_cache_extra"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/genie_connect/android/db/loaders/gamification/LeaderboardGlobalLoader;-><init>(Landroid/app/Activity;JJZ)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

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
            "Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;>;>;"
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getEntity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getEntityId()J

    move-result-wide v4

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/adapters/gamification/GamificationAdapterManager;->getLeaderboardGlobalAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Ljava/util/List;Ljava/lang/String;J)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 79
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->updateUi()V

    .line 80
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
            "Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;>;>;"
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->onResume()V

    .line 63
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->populate()V

    .line 64
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    const-string v0, "fixForBug#19211"

    const-string v1, "possibleFixForBug#19211"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/gamification/LeaderboardBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method public populate()V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-boolean v0, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->firstRun:Z

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->refreshList(Z)V

    .line 86
    return-void
.end method

.method public refreshList(Z)V
    .locals 3
    .param p1, "forceFromCache"    # Z

    .prologue
    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "force_from_cache_extra"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getLoaderId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v1

    if-nez v1, :cond_0

    .line 93
    const-string v1, "^ LEADERBOARD: Loader does not exist. Creating it"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->firstRun:Z

    .line 95
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getLoaderId()I

    move-result v2

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v1, "^ LEADERBOARD: Loader exists. Restarting it"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getLoaderId()I

    move-result v2

    invoke-virtual {v1, v2, v0, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->forceLoad()V

    goto :goto_0
.end method

.method protected stopLoader()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/LeaderboardGlobalFragment;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 105
    return-void
.end method
