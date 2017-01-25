.class public Lcom/eventgenie/android/activities/others/categories/CountryListActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "CountryListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/others/categories/CountryListActivity$1;
    }
.end annotation


# static fields
.field public static final HIDE_ACTIONBAR_EXTRA:Ljava/lang/String; = "hide_actionbar"

.field public static final PARENT_COUNTRY_EXTRA:Ljava/lang/String; = "parent_country"


# instance fields
.field private mCountry:Ljava/lang/String;

.field private mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private mHideActionBar:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mHideActionBar:Z

    .line 28
    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mCountry:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget-object v1, Lcom/eventgenie/android/ui/help/UIUtils$Layout;->GENERIC_LIST:Lcom/eventgenie/android/ui/help/UIUtils$Layout;

    invoke-static {v1, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayout(Lcom/eventgenie/android/ui/help/UIUtils$Layout;Lcom/eventgenie/android/activities/base/GenieActivity;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 39
    .local v8, "b":Landroid/os/Bundle;
    if-eqz v8, :cond_0

    .line 40
    const-string v1, "parent_country"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mCountry:Ljava/lang/String;

    .line 41
    const-string v1, "associated_entity_name"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 42
    const-string v1, "hide_actionbar"

    invoke-virtual {v8, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mHideActionBar:Z

    .line 47
    :goto_0
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mHideActionBar:Z

    if-eqz v1, :cond_1

    .line 48
    sget v1, Lcom/eventgenie/android/R$id;->action_bar:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 49
    .local v7, "actionBar":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .end local v7    # "actionBar":Landroid/view/View;
    :goto_1
    sget-object v1, Lcom/eventgenie/android/activities/others/categories/CountryListActivity$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 72
    iput-object v4, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ COUNTRYLIST: No idea what to do with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 79
    :goto_2
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mCountry:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 80
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    if-nez v1, :cond_4

    .line 81
    const/4 v0, 0x0

    .line 104
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    return-void

    .line 44
    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_0
    const-string v1, "^ COUNTRYLIST: bundle NULL"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mCountry:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 56
    :pswitch_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mCountry:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/DbExhibitors;->getCountries()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/DbExhibitors;->getByCountry(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_2

    .line 64
    :pswitch_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mCountry:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 65
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getPoisDb()Lcom/genie_connect/android/db/access/DbPoi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/DbPoi;->getCountries()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_2

    .line 67
    :cond_3
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getPoisDb()Lcom/genie_connect/android/db/access/DbPoi;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/DbPoi;->getByCountry(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto :goto_2

    .line 83
    :cond_4
    new-instance v0, Landroid/support/v4/widget/SimpleCursorAdapter;

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_country:I

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    new-array v4, v9, [Ljava/lang/String;

    const-string v1, "address_country"

    aput-object v1, v4, v6

    new-array v5, v9, [I

    const v1, 0x1020014

    aput v1, v5, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .restart local v0    # "listAdapter":Landroid/widget/ListAdapter;
    goto/16 :goto_3

    .line 92
    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_5
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    if-nez v1, :cond_6

    .line 93
    const/4 v0, 0x0

    .restart local v0    # "listAdapter":Landroid/widget/ListAdapter;
    goto/16 :goto_3

    .line 95
    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    :cond_6
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-static {p0, v1, v2, v3, v4}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v0

    .restart local v0    # "listAdapter":Landroid/widget/ListAdapter;
    goto/16 :goto_3

    .line 54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->close(Landroid/database/Cursor;)V

    .line 112
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onDestroy()V

    .line 113
    return-void
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
    .line 118
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    sget v4, Lcom/eventgenie/android/R$id;->country_row:I

    if-ne v3, v4, :cond_0

    .line 119
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    .local v0, "b":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-interface {v3, p3}, Luk/co/alt236/easycursor/EasyCursor;->moveToPosition(I)Z

    .line 123
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mDataCursor:Luk/co/alt236/easycursor/EasyCursor;

    const-string v4, "address_country"

    invoke-interface {v3, v4}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "country":Ljava/lang/String;
    const-string v3, "associated_entity_name"

    iget-object v4, p0, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 126
    const-string v3, "parent_country"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/categories/CountryListActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 133
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "country":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method
