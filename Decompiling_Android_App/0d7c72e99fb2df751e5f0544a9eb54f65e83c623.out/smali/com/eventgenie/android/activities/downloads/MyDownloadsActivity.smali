.class public Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;
.super Lcom/eventgenie/android/activities/base/GenieEntityListActivity;
.source "MyDownloadsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/activities/base/GenieEntityListActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final FILTER_FAVORITE_EXTRA:Ljava/lang/String; = "is_favorite"

.field public static final FILTER_FEATURED_EXTRA:Ljava/lang/String; = "is_featured"

.field private static final NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;


# instance fields
.field private mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field private mLoader:Lcom/genie_connect/android/db/loaders/DownloadablesLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->DOWNLOADABLES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 64
    iput-object v0, p0, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->mLoader:Lcom/genie_connect/android/db/loaders/DownloadablesLoader;

    return-void
.end method


# virtual methods
.method protected generateLoaderBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method protected isFavouriteList()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    sget-object v0, Lcom/eventgenie/android/ui/help/UIUtils$Layout;->ENTITY_LIST:Lcom/eventgenie/android/ui/help/UIUtils$Layout;

    invoke-static {v0, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayout(Lcom/eventgenie/android/ui/help/UIUtils$Layout;Lcom/eventgenie/android/activities/base/GenieActivity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->setContentView(I)V

    .line 86
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->initCommonListElements()V

    .line 88
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 90
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyDownloads()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 92
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->getEmptyView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 98
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 6
    .param p1, "loaderId"    # I
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
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 102
    invoke-virtual {p0, v1, v5}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->showIndicator(ZZ)V

    .line 103
    sget v0, Lcom/eventgenie/android/R$string;->loading_format:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v2, v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->setupEmptyViewTextOnly(Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/genie_connect/android/db/loaders/DownloadablesLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/genie_connect/android/db/loaders/DownloadablesLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->mLoader:Lcom/genie_connect/android/db/loaders/DownloadablesLoader;

    .line 109
    iget-object v0, p0, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->mLoader:Lcom/genie_connect/android/db/loaders/DownloadablesLoader;

    return-object v0
.end method

.method protected onFilterTextChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "filtertext"    # Ljava/lang/CharSequence;

    .prologue
    .line 116
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "v"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 120
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcom/eventgenie/android/utils/ValueCheck;->tryLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 121
    .local v2, "dlId":J
    new-instance v1, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    iget-object v4, p0, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v4}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    check-cast v4, Luk/co/alt236/easycursor/EasyCursor;

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;-><init>(JLandroid/content/Context;Landroid/database/Cursor;)V

    .line 126
    .local v1, "utils":Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;
    invoke-virtual {v1}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->getProperAlertDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 127
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 128
    :cond_0
    return-void
.end method

.method protected onLiveSyncCompleted()V
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->getLoaderId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 133
    .local v0, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<*>;"
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->onContentChanged()V

    .line 136
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0, v0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->showIndicator(ZZ)V

    .line 146
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    sget v0, Lcom/eventgenie/android/R$string;->message_you_have_not_added_any_downloadables:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->setupEmptyViewForNoFavs(I)Landroid/view/View;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 151
    iget-object v0, p0, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 152
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 140
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 141
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/downloads/MyDownloadsActivity;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->onContentChanged()V

    .line 157
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->onResume()V

    .line 158
    return-void
.end method
