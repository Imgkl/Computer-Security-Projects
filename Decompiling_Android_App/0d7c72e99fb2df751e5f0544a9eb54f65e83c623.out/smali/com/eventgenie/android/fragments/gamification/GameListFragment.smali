.class public Lcom/eventgenie/android/fragments/gamification/GameListFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;
.source "GameListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/eventgenie/android/fragments/gamification/GameListFragment;
    .locals 2

    .prologue
    .line 104
    new-instance v1, Lcom/eventgenie/android/fragments/gamification/GameListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;-><init>()V

    .line 105
    .local v1, "frag":Lcom/eventgenie/android/fragments/gamification/GameListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 108
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    sget v0, Lcom/eventgenie/android/R$string;->no_data:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->populate()V

    .line 56
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
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
    .line 60
    new-instance v0, Lcom/genie_connect/android/db/loaders/gamification/GameLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/db/loaders/gamification/GameLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 65
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 66
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "arg1"    # Landroid/database/Cursor;
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
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x1

    .line 82
    iget-object v0, p0, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 83
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->setListShown(Z)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 70
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 71
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onResume()V

    .line 76
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->getLoaderId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 77
    return-void
.end method

.method public populate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/adapters/gamification/GamificationAdapterManager;->getGameListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 92
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 95
    return-void
.end method

.method protected stopLoader()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/GameListFragment;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 101
    return-void
.end method
