.class public Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;
.source "TrophyListFragment.java"

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


# static fields
.field private static final EXTRA_TROPHIES_FOR_GAME:Ljava/lang/String; = "trophies_for_game"


# instance fields
.field private mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field private mGameId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;
    .locals 2

    .prologue
    .line 106
    new-instance v1, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;-><init>()V

    .line 107
    .local v1, "frag":Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 110
    return-object v1
.end method

.method public static newInstance(J)Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;
    .locals 4
    .param p0, "gameId"    # J

    .prologue
    .line 114
    new-instance v1, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;-><init>()V

    .line 115
    .local v1, "frag":Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "trophies_for_game"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 118
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 119
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "trophies_for_game"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->mGameId:J

    .line 58
    sget v0, Lcom/eventgenie/android/R$string;->no_data:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->populate()V

    .line 60
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 6
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
    .line 64
    new-instance v0, Lcom/genie_connect/android/db/loaders/gamification/TrophyLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    iget-wide v4, p0, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->mGameId:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/genie_connect/android/db/loaders/gamification/TrophyLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;J)V

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
    .line 69
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 70
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

    .line 79
    iget-object v0, p0, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 80
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->setListShown(Z)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->setListShownNoAnimation(Z)V

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
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 74
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 75
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onResume()V

    .line 90
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->getLoaderId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 91
    return-void
.end method

.method public populate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/adapters/gamification/GamificationAdapterManager;->getTrophyListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 95
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 98
    return-void
.end method

.method protected stopLoader()V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyListFragment;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 103
    return-void
.end method
