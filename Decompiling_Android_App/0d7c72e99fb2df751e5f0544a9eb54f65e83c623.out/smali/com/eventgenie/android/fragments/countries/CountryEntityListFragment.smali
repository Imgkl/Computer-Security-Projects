.class public Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;
.source "CountryEntityListFragment.java"

# interfaces
.implements Lcom/genie_connect/android/db/QuerySettings;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;",
        "Lcom/genie_connect/android/db/QuerySettings;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final ENTITY_TYPE:Ljava/lang/String; = "list_entity_type"

.field public static final PARENT_COUNTRY_EXTRA:Ljava/lang/String; = "parent_country"


# instance fields
.field private emptyView:Landroid/view/View;

.field private listAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field private mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private mParentCountry:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mParentCountry:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;
    .locals 4
    .param p0, "parent"    # Ljava/lang/String;
    .param p1, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 73
    new-instance v1, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;-><init>()V

    .line 74
    .local v1, "frag":Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "parent_country"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "list_entity_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 77
    const-string v2, "query_setting_loc_display_mode"

    sget-object v3, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->ExpandedLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 78
    const-string v2, "query_setting_hide_if_no_location"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 80
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v7

    .line 90
    .local v7, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    sget-object v0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    iget-object v1, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 106
    iput-object v4, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ COUNTRYENTITYLISTFRAGMENT: No idea what to do with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mParentCountry:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    if-nez v0, :cond_2

    .line 113
    iput-object v4, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->listAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 133
    :goto_1
    iget-object v0, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->listAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 136
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getLoaderId()I

    move-result v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 137
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mParentCountry:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {v7}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/DbExhibitors;->getCountries()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v7}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mParentCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/DbExhibitors;->getByCountry(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mParentCountry:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 100
    invoke-virtual {v7}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getPoisDb()Lcom/genie_connect/android/db/access/DbPoi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/DbPoi;->getCountries()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {v7}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getPoisDb()Lcom/genie_connect/android/db/access/DbPoi;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mParentCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/DbPoi;->getByCountry(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_0

    .line 115
    :cond_2
    new-instance v0, Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_country:I

    iget-object v3, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "address_country"

    aput-object v5, v4, v6

    new-array v5, v9, [I

    const v8, 0x1020014

    aput v8, v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->listAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    goto :goto_1

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    if-nez v0, :cond_4

    .line 125
    iput-object v4, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->listAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    goto :goto_1

    .line 127
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->listAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    goto/16 :goto_1

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 142
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 143
    const-string v1, "parent_country"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mParentCountry:Ljava/lang/String;

    .line 144
    const-string v1, "list_entity_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iput-object v1, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 149
    :goto_0
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    return-void

    .line 146
    :cond_0
    iput-object v1, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mParentCountry:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    goto :goto_0
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
    .line 194
    new-instance v0, Lcom/genie_connect/android/db/loaders/CountryListLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mParentCountry:Ljava/lang/String;

    iget-object v4, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/db/loaders/CountryListLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Ljava/lang/String;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayoutForFragment(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->emptyView:Landroid/view/View;

    .line 156
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 188
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onDestroy()V

    .line 189
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 161
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Luk/co/alt236/easycursor/EasyCursor;

    .line 162
    .local v8, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    const-string v0, "address_country"

    invoke-interface {v8, v0}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 164
    .local v7, "country":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->country_row:I

    if-ne v0, v1, :cond_0

    .line 165
    new-instance v9, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v9, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v6, "b":Landroid/os/Bundle;
    const-string v0, "associated_entity_name"

    iget-object v1, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 169
    const-string v0, "parent_country"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v9, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v9}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->startActivityCarefully(Landroid/content/Intent;)V

    .line 176
    .end local v6    # "b":Landroid/os/Bundle;
    .end local v9    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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
    .line 209
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->listAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 210
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 211
    sget v0, Lcom/eventgenie/android/R$string;->no_data:I

    iget-object v1, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->setupEmptyViewTextOnly(ILandroid/view/View;)V

    .line 213
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->markLoaderAsRunning(Z)V

    .line 214
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 61
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 204
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->listAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 205
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 180
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onResume()V

    .line 181
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->markLoaderAsRunning(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getAppropriateConfig(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 183
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getLoaderId()I

    move-result v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 184
    return-void
.end method

.method protected setupEmptyViewForNoFavs(ILandroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "resId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 218
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/genie_connect/android/utils/string/StringUtils;->addDrawableSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/eventgenie/android/R$string;->button_try_now:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 224
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    return-object p2
.end method

.method protected setupEmptyViewTextOnly(ILandroid/view/View;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/eventgenie/android/fragments/countries/CountryEntityListFragment;->setupEmptyViewTextOnly(Ljava/lang/String;Landroid/view/View;)V

    .line 233
    return-void
.end method

.method protected setupEmptyViewTextOnly(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 236
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    return-void
.end method
