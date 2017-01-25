.class public Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;
.super Lcom/eventgenie/android/activities/base/GenieEntityListActivity;
.source "VisitorListActivity.java"

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

.field private mIsFavorite:Z

.field private mLoader:Lcom/genie_connect/android/db/loaders/FavouriteVisitorLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->VISITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->mIsFavorite:Z

    .line 69
    iput-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 70
    iput-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->mLoader:Lcom/genie_connect/android/db/loaders/FavouriteVisitorLoader;

    return-void
.end method


# virtual methods
.method protected generateLoaderBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method protected isFavouriteList()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->mIsFavorite:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    sget-object v1, Lcom/eventgenie/android/ui/help/UIUtils$Layout;->ENTITY_LIST:Lcom/eventgenie/android/ui/help/UIUtils$Layout;

    invoke-static {v1, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayout(Lcom/eventgenie/android/ui/help/UIUtils$Layout;Lcom/eventgenie/android/activities/base/GenieActivity;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 94
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 95
    const-string v1, "is_favorite"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->mIsFavorite:Z

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->initCommonListElements()V

    .line 100
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->mIsFavorite:Z

    if-eqz v1, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteVisitors()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 106
    :goto_0
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-static {p0, v1, v2, v3, v3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 108
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getEmptyView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 115
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getLoaderId()I

    move-result v2

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 116
    return-void

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteVisitors()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/BaseConfig;)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8
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

    .line 120
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->showIndicator(Z)V

    .line 121
    sget v0, Lcom/eventgenie/android/R$string;->loading_format:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->setupEmptyViewTextOnly(Ljava/lang/String;)V

    .line 123
    new-instance v1, Lcom/genie_connect/android/db/loaders/FavouriteVisitorLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->mIsFavorite:Z

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/genie_connect/android/db/loaders/FavouriteVisitorLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;JLjava/lang/String;Z)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->mLoader:Lcom/genie_connect/android/db/loaders/FavouriteVisitorLoader;

    .line 130
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->mLoader:Lcom/genie_connect/android/db/loaders/FavouriteVisitorLoader;

    return-object v0
.end method

.method protected onFilterTextChanged(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "filtertext"    # Ljava/lang/CharSequence;

    .prologue
    .line 137
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 141
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/eventgenie/android/R$id;->visitor_row:I

    if-ne v3, v4, :cond_3

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v0, "b":Landroid/os/Bundle;
    invoke-static {p0}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    const-string/jumbo v6, "visitors"

    invoke-static {v4, v5, v6}, Lcom/genie_connect/android/db/caching/PSCGroups;->getGroupForEntity(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "profile":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v3, p4, p5, v0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .line 168
    .local v1, "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :goto_0
    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 175
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v2    # "profile":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 156
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v2    # "profile":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    const-string/jumbo v3, "visitor_json"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p0, v3, p4, p5, v0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    .restart local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0

    .line 164
    .end local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    :cond_2
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    .line 165
    const/4 v1, 0x0

    .restart local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    goto :goto_0

    .line 172
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "navResult":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    .end local v2    # "profile":Ljava/lang/String;
    :cond_3
    invoke-static/range {p0 .. p5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_1
.end method

.method protected onLiveSyncCompleted()V
    .locals 3

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getLoaderId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 180
    .local v0, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<*>;"
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->onContentChanged()V

    .line 183
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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
    .line 192
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->showIndicator(Z)V

    .line 193
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 194
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->mIsFavorite:Z

    if-eqz v1, :cond_2

    .line 195
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->NO_FAVOURITES_AVAILABLE:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->setupEmptyViewForNoFavs(Ljava/lang/String;)Landroid/view/View;

    .line 206
    .end local v0    # "label":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 207
    return-void

    .line 199
    .restart local v0    # "label":Ljava/lang/String;
    :cond_1
    sget v1, Lcom/eventgenie/android/R$string;->message_you_have_not_added_any_favourites:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->setupEmptyViewForNoFavs(I)Landroid/view/View;

    goto :goto_0

    .line 202
    .end local v0    # "label":Ljava/lang/String;
    :cond_2
    sget v1, Lcom/eventgenie/android/R$string;->no_data:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->setupEmptyViewTextOnly(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 187
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 188
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorListActivity;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->onContentChanged()V

    .line 212
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->onResume()V

    .line 213
    return-void
.end method
