.class public Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;
.super Lcom/eventgenie/android/activities/base/GenieEntityListActivity;
.source "ExhibitorListActivity.java"

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
.field public static final DISPLAY_EXPANDED_LOCATION:Ljava/lang/String; = "expanded_location"

.field public static final FILTER_FAVORITE_EXTRA:Ljava/lang/String; = "is_favorite"

.field public static final FILTER_FEATURED_EXTRA:Ljava/lang/String; = "is_featured"

.field public static final HIDE_EXHIBITORS_WITHOUT_LOCATIONS:Ljava/lang/String; = "extra_hide_exhibitors_without_locations"

.field private static final NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final OPEN_MAPPING_ON_ITEM_CLICK:Ljava/lang/String; = "open_mapping_on_item_click"

.field public static final REQUEST_SEARCH_EXTRA:Ljava/lang/String; = "request_search"

.field public static final ROUTE_RESULT_EXTRA:Ljava/lang/String; = "route_result"


# instance fields
.field private isFavorite:Z

.field private isFeatured:Z

.field private mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field private mDisplayExpandedLocation:Z

.field private mHideExhibitorsWithNoLocations:Z

.field private mLoader:Lcom/genie_connect/android/db/loaders/ExhibitorLoader;

.field private openMappingDetails:Z

.field private routeResult:I

.field private searchRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->EXHIBITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;-><init>()V

    .line 75
    iput-boolean v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->searchRequested:Z

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->routeResult:I

    .line 77
    iput-boolean v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->openMappingDetails:Z

    .line 78
    iput-boolean v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->mDisplayExpandedLocation:Z

    .line 79
    iput-boolean v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->isFeatured:Z

    .line 80
    iput-boolean v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->isFavorite:Z

    .line 81
    iput-boolean v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->mHideExhibitorsWithNoLocations:Z

    .line 83
    iput-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 84
    iput-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->mLoader:Lcom/genie_connect/android/db/loaders/ExhibitorLoader;

    return-void
.end method


# virtual methods
.method protected generateLoaderBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "query_setting_filter_text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "query_setting_isfeatured"

    iget-boolean v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->isFeatured:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    const-string v1, "query_setting_isfavourite"

    iget-boolean v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->isFavorite:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    const-string v1, "query_setting_hide_if_no_location"

    iget-boolean v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->mHideExhibitorsWithNoLocations:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    const-string v1, "query_setting_loc_display_mode"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getLocationDisplayMode()Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 96
    return-object v0
.end method

.method protected getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method public getLocationDisplayMode()Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->mDisplayExpandedLocation:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->ExpandedLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->SingleLineLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    goto :goto_0
.end method

.method protected isFavouriteList()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->isFavorite:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    sget-object v1, Lcom/eventgenie/android/ui/help/UIUtils$Layout;->ENTITY_LIST:Lcom/eventgenie/android/ui/help/UIUtils$Layout;

    invoke-static {v1, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayout(Lcom/eventgenie/android/ui/help/UIUtils$Layout;Lcom/eventgenie/android/activities/base/GenieActivity;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->setContentView(I)V

    .line 120
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 123
    const-string v1, "is_featured"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->isFeatured:Z

    .line 124
    const-string v1, "is_favorite"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->isFavorite:Z

    .line 125
    const-string v1, "request_search"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->searchRequested:Z

    .line 126
    const-string v1, "extra_hide_exhibitors_without_locations"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->mHideExhibitorsWithNoLocations:Z

    .line 127
    const-string v1, "route_result"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->routeResult:I

    .line 128
    const-string v1, "open_mapping_on_item_click"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->openMappingDetails:Z

    .line 129
    const-string v1, "expanded_location"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->mDisplayExpandedLocation:Z

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SEARCH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v4}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 133
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->initCommonListElements()V

    .line 135
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->isFavorite:Z

    if-eqz v1, :cond_2

    .line 136
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMyFavouriteExhibitors()Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 141
    :goto_0
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->isFavorite:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->routeResult:I

    if-gez v1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->hideAdvert()V

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getLocationDisplayMode()Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    move-result-object v2

    invoke-static {p0, v1, v5, v2}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getExhibitorListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 147
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 150
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getEmptyView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 152
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getLoaderId()I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->generateLoaderBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 156
    return-void

    .line 138
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getExhibitors()Lcom/genie_connect/android/db/config/widgets/ExhibitorConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/BaseConfig;)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 10
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
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->showIndicator(Z)V

    .line 162
    sget v0, Lcom/eventgenie/android/R$string;->loading_format:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v5, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v6, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v3, v5, v6}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->setupEmptyViewTextOnly(Ljava/lang/String;)V

    .line 164
    const-string v0, "query_setting_loc_display_mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    .line 168
    .local v9, "locMode":Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;
    new-instance v0, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    const-string v3, "query_setting_filter_text"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->ExpandedLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    if-ne v9, v5, :cond_0

    :goto_0
    const-string v5, "query_setting_isfeatured"

    invoke-virtual {p2, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "query_setting_isfavourite"

    invoke-virtual {p2, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "query_setting_hide_if_no_location"

    invoke-virtual {p2, v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "query_setting_sort_by_sequence"

    invoke-virtual {p2, v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/genie_connect/android/db/loaders/ExhibitorLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Ljava/lang/String;ZZZZZ)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->mLoader:Lcom/genie_connect/android/db/loaders/ExhibitorLoader;

    .line 178
    iget-object v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->mLoader:Lcom/genie_connect/android/db/loaders/ExhibitorLoader;

    return-object v0

    :cond_0
    move v4, v1

    .line 168
    goto :goto_0
.end method

.method protected onFilterTextChanged(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "filtertext"    # Ljava/lang/CharSequence;

    .prologue
    .line 183
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 187
    .local v0, "text":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getLoaderId()I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->generateLoaderBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 196
    return-void

    .line 183
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 188
    .restart local v0    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
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
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 200
    iget-object v4, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v4}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 201
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-boolean v4, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->openMappingDetails:Z

    if-eqz v4, :cond_3

    .line 203
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/genie_connect/android/db/access/DbMaps;->getMaps(I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    invoke-interface {v4}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 205
    .local v3, "mInteractiveMapsPresent":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 206
    new-instance v4, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;

    const-string v5, "locations"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 203
    .end local v3    # "mInteractiveMapsPresent":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 212
    :cond_3
    iget v4, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->routeResult:I

    if-ltz v4, :cond_4

    .line 214
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 215
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 217
    .local v0, "b":Landroid/os/Bundle;
    const-string v4, "ex_id"

    const-string v5, "id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 218
    const-string v4, "entity_location"

    const-string v5, "locations"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v4, "ex_name"

    const-string v5, "name"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 223
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->setResult(ILandroid/content/Intent;)V

    .line 224
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->finish()V

    goto :goto_0

    .line 227
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-static/range {p0 .. p5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected onLiveSyncCompleted()V
    .locals 3

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getLoaderId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 235
    .local v0, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<*>;"
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->onContentChanged()V

    .line 238
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
    .line 247
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->showIndicator(Z)V

    .line 248
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 249
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->isFavorite:Z

    if-eqz v1, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/android/db/config/misc/Label;->NO_FAVOURITES_AVAILABLE:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->setupEmptyViewForNoFavs(Ljava/lang/String;)Landroid/view/View;

    .line 261
    .end local v0    # "label":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 262
    return-void

    .line 254
    .restart local v0    # "label":Ljava/lang/String;
    :cond_1
    sget v1, Lcom/eventgenie/android/R$string;->message_you_have_not_added_any_favourites:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->setupEmptyViewForNoFavs(I)Landroid/view/View;

    goto :goto_0

    .line 257
    .end local v0    # "label":Ljava/lang/String;
    :cond_2
    sget v1, Lcom/eventgenie/android/R$string;->no_data:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->setupEmptyViewTextOnly(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 242
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 243
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->onContentChanged()V

    .line 269
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->searchRequested:Z

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->onSearchRequested()Z

    .line 273
    :cond_0
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityListActivity;->onResume()V

    .line 274
    return-void
.end method

.method public onSearchClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->searchRequested:Z

    .line 279
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->onSearchRequested()Z

    .line 280
    return-void
.end method

.method public onSearchRequested()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 286
    .local v0, "appDataBundle":Landroid/os/Bundle;
    const-string v1, "search_target"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2, v0, v2}, Lcom/eventgenie/android/activities/exhibitors/ExhibitorListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 289
    return v3
.end method
