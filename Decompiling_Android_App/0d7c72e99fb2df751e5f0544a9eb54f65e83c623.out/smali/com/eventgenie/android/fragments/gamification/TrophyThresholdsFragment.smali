.class public Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;
.source "TrophyThresholdsFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;",
        ">;>;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final PARAM_ID:Ljava/lang/String; = "param_id"


# instance fields
.field private mId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;-><init>()V

    return-void
.end method

.method public static newInstance(J)Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;
    .locals 4
    .param p0, "trophyId"    # J

    .prologue
    .line 111
    new-instance v1, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;-><init>()V

    .line 112
    .local v1, "frag":Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "param_id"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 116
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 117
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    sget v0, Lcom/eventgenie/android/R$string;->no_data:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->mId:J

    .line 60
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->populate()V

    .line 61
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
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/genie_connect/android/db/loaders/gamification/TrophyThresholdLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    iget-wide v4, p0, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->mId:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/genie_connect/android/db/loaders/gamification/TrophyThresholdLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;J)V

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
    .line 70
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 71
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;>;>;"
    .local p2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;>;"
    const/4 v3, 0x1

    .line 80
    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/eventgenie/android/adapters/gamification/GamificationAdapterManager;->getTrophyThresholdAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Ljava/util/List;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->setListShown(Z)V

    .line 91
    :goto_1
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->setListShownNoAnimation(Z)V

    goto :goto_1
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
            "Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/genie_connect/android/net/container/gson/objects/TrophyThresholdGsonModel;>;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onResume()V

    .line 96
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getLoaderId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 97
    return-void
.end method

.method public populate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 103
    return-void
.end method

.method protected stopLoader()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/gamification/TrophyThresholdsFragment;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 108
    return-void
.end method
