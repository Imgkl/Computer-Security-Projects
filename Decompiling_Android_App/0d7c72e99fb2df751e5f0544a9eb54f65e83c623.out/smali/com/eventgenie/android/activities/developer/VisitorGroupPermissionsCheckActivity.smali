.class public Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "VisitorGroupPermissionsCheckActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/activities/base/GenieListActivity;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

.field private static final LOADER_ID:I = 0x1


# instance fields
.field private mAdapter:Landroid/support/v4/widget/CursorAdapter;

.field private mLoader:Lcom/genie_connect/android/db/loaders/EntityRawRowLoader;

.field private mSpinner:Landroid/widget/Spinner;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->SUPPORT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sput-object v0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mLoader:Lcom/genie_connect/android/db/loaders/EntityRawRowLoader;

    .line 51
    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mAdapter:Landroid/support/v4/widget/CursorAdapter;

    return-void
.end method


# virtual methods
.method protected getInternalSecurityGroupRequirement()Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super/range {p0 .. p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    sget v2, Lcom/eventgenie/android/R$layout;->generic_spinner_list:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->setContentView(I)V

    .line 62
    sget v2, Lcom/eventgenie/android/R$id;->spinner:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mSpinner:Landroid/widget/Spinner;

    .line 63
    sget v2, Lcom/eventgenie/android/R$id;->list_header:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mTextView:Landroid/widget/TextView;

    .line 65
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v12, "entities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->values()[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v9

    .local v9, "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    array-length v15, v9

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_0
    if-ge v14, v15, :cond_0

    aget-object v13, v9, v14

    .line 71
    .local v13, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-virtual {v13}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 74
    .end local v13    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :cond_0
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 76
    new-instance v8, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 77
    .local v8, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v8, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 81
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v10

    .line 84
    .local v10, "creds":Lcom/genie_connect/android/net/container/LoginCredentials;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 86
    .local v16, "prefs":Landroid/content/SharedPreferences;
    invoke-static/range {p0 .. p0}, Lcom/genie_connect/android/net/providers/DeltaUtils;->canRecieveUpdates(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-static/range {p0 .. p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->getCurrentVersionPrefsKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->event_packaged_data_version:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 93
    .local v11, "dataVersion":Ljava/lang/String;
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v17, "sb":Ljava/lang/StringBuilder;
    if-nez v10, :cond_2

    .line 96
    const-string v2, "Logged in as: anonymous"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :goto_2
    const/16 v2, 0xa

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    const-string v2, "Data Version: "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mTextView:Landroid/widget/TextView;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mTextView:Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    new-instance v2, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;

    sget v4, Lcom/eventgenie/android/R$layout;->list_item_three_textview_lines:I

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    new-array v7, v3, [I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/eventgenie/android/activities/developer/VisitorGroupCheckAdapter;-><init>(Landroid/app/Activity;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mAdapter:Landroid/support/v4/widget/CursorAdapter;

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mAdapter:Landroid/support/v4/widget/CursorAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 119
    return-void

    .line 91
    .end local v11    # "dataVersion":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string v11, "LIVE"

    .restart local v11    # "dataVersion":Ljava/lang/String;
    goto :goto_1

    .line 98
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const-string v2, "Logged in as: "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v10}, Lcom/genie_connect/android/net/container/LoginCredentials;->getUsername()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const/16 v2, 0xa

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    const-string v2, "Visitor ID: "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v10}, Lcom/genie_connect/android/net/container/LoginCredentials;->getUserId()J

    move-result-wide v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    const/16 v2, 0xa

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    const-string v2, "Visitor Groups: "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v10}, Lcom/genie_connect/android/net/container/LoginCredentials;->getAllVisitorGroupNames()Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/genie_connect/android/utils/string/StringUtils;->collectionToCSV(Ljava/util/Collection;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
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
    .line 142
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->showIndicator(Z)V

    .line 144
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    .line 145
    .local v0, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    new-instance v1, Lcom/genie_connect/android/db/loaders/EntityRawRowLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/genie_connect/android/db/loaders/EntityRawRowLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mLoader:Lcom/genie_connect/android/db/loaders/EntityRawRowLoader;

    .line 147
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mLoader:Lcom/genie_connect/android/db/loaders/EntityRawRowLoader;

    return-object v1
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
    .line 152
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    .line 153
    .local v0, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    sget v1, Lcom/eventgenie/android/R$string;->info:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 155
    .local v2, "entityId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 156
    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v3, v1}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getEntityDetailsIntent(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot open "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " with id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
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
    .line 164
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 166
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->showIndicator(Z)V

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1, p2}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 179
    if-eqz p2, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ VISITORGROUPPERSMISSIONSCHECK: Error swapping cursor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 185
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 170
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 171
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onShareClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v2, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Luk/co/alt236/easycursor/EasyCursor;

    .line 123
    .local v0, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    .line 131
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->logFullCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "string":Ljava/lang/String;
    new-instance v2, Lcom/eventgenie/android/utils/intents/ShareManager;

    sget-object v3, Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;->TEXT_PLAIN:Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;

    invoke-direct {v2, p0, v3}, Lcom/eventgenie/android/utils/intents/ShareManager;-><init>(Landroid/app/Activity;Lcom/eventgenie/android/utils/intents/ShareManager$SHARE_TYPE;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contents of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v1}, Lcom/eventgenie/android/utils/intents/ShareManager;->share(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected showIndicator(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 195
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 196
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/eventgenie/android/activities/developer/VisitorGroupPermissionsCheckActivity;->showIndicator(ZZ)V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    instance-of v2, v0, Lcom/eventgenie/android/activities/base/GenieTabActivity;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 198
    check-cast v1, Lcom/eventgenie/android/activities/base/GenieTabActivity;

    .line 199
    .local v1, "parentActivity":Lcom/eventgenie/android/activities/base/GenieTabActivity;
    invoke-virtual {v1, p1}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->showIndicator(Z)V

    goto :goto_0
.end method
