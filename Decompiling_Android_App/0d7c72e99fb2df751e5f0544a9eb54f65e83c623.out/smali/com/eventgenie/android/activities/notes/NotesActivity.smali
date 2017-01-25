.class public Lcom/eventgenie/android/activities/notes/NotesActivity;
.super Lcom/eventgenie/android/activities/base/GenieEntityListActivity;
.source "NotesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;
    }
.end annotation

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

.field private mLoader:Lcom/genie_connect/android/db/loaders/NotesLoader;

.field private mVisitorsDownloaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->NOTES:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/notes/NotesActivity;->NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/eventgenie/android/activities/notes/NotesActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 78
    iput-object v0, p0, Lcom/eventgenie/android/activities/notes/NotesActivity;->mLoader:Lcom/genie_connect/android/db/loaders/NotesLoader;

    .line 220
    return-void
.end method

.method static synthetic access$002(Lcom/eventgenie/android/activities/notes/NotesActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/notes/NotesActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/notes/NotesActivity;->mVisitorsDownloaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/notes/NotesActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/notes/NotesActivity;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getLoaderId()I

    move-result v0

    return v0
.end method

.method private downloadVisitorsIfNecessary(Luk/co/alt236/easycursor/EasyCursor;)Z
    .locals 6
    .param p1, "notesCursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v2, 0x0

    .line 172
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/eventgenie/android/activities/notes/NotesActivity;->mVisitorsDownloaded:Z

    if-eqz v3, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v2

    .line 177
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v1, "requiredVisitorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 181
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    .line 184
    :cond_2
    const-string v3, "entity"

    invoke-interface {p1, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "entityType":Ljava/lang/String;
    const-string v3, "isEntityMissing"

    invoke-interface {p1, v3}, Luk/co/alt236/easycursor/EasyCursor;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    const-string/jumbo v3, "visitors"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 189
    const-string v3, "entityId"

    invoke-interface {p1, v3}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_3
    invoke-interface {p1}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 195
    .end local v0    # "entityType":Ljava/lang/String;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 196
    new-instance v2, Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;-><init>(Lcom/eventgenie/android/activities/notes/NotesActivity;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Long;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 200
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected generateLoaderBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/eventgenie/android/activities/notes/NotesActivity;->NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method protected isFavouriteList()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sget-object v0, Lcom/eventgenie/android/ui/help/UIUtils$Layout;->ENTITY_LIST:Lcom/eventgenie/android/ui/help/UIUtils$Layout;

    invoke-static {v0, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayout(Lcom/eventgenie/android/ui/help/UIUtils$Layout;Lcom/eventgenie/android/activities/base/GenieActivity;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->initCommonListElements()V

    .line 103
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyNotes()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 105
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->NOTE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/notes/NotesActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 107
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/notes/NotesActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getEmptyView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 112
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 113
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
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
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 117
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/notes/NotesActivity;->showIndicator(Z)V

    .line 118
    sget v0, Lcom/eventgenie/android/R$string;->loading_format:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/activities/notes/NotesActivity;->NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->setupEmptyViewTextOnly(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/genie_connect/android/db/loaders/NotesLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-direct {v0, p0, v1, v6, v6}, Lcom/genie_connect/android/db/loaders/NotesLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/notes/NotesActivity;->mLoader:Lcom/genie_connect/android/db/loaders/NotesLoader;

    .line 126
    iget-object v0, p0, Lcom/eventgenie/android/activities/notes/NotesActivity;->mLoader:Lcom/genie_connect/android/db/loaders/NotesLoader;

    return-object v0
.end method

.method protected onFilterTextChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "filtertext"    # Ljava/lang/CharSequence;

    .prologue
    .line 133
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 137
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-static/range {p0 .. p5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 138
    return-void
.end method

.method protected onLiveSyncCompleted()V
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getLoaderId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 143
    .local v0, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<*>;"
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->onContentChanged()V

    .line 146
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
    .line 155
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->showIndicator(Z)V

    .line 156
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    sget v0, Lcom/eventgenie/android/R$string;->message_you_have_not_added_any_notes:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->setupEmptyViewForNoFavs(I)Landroid/view/View;

    :cond_0
    move-object v0, p2

    .line 160
    check-cast v0, Luk/co/alt236/easycursor/EasyCursor;

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->downloadVisitorsIfNecessary(Luk/co/alt236/easycursor/EasyCursor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/eventgenie/android/activities/notes/NotesActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 165
    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 70
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/activities/notes/NotesActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 150
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/eventgenie/android/activities/notes/NotesActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 151
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->onContentChanged()V

    .line 209
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->onResume()V

    .line 210
    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    .local v0, "appDataBundle":Landroid/os/Bundle;
    const-string v1, "search_target"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3, v0, v3}, Lcom/eventgenie/android/activities/notes/NotesActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 217
    const/4 v1, 0x1

    return v1
.end method
