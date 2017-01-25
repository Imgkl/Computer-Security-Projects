.class public Lcom/eventgenie/android/activities/others/categories/TagListActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "TagListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/eventgenie/android/activities/others/categories/GenieCategories;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/others/categories/TagListActivity$1;
    }
.end annotation


# static fields
.field public static final HIDE_ACTIONBAR_EXTRA:Ljava/lang/String; = "hide_actionbar"


# instance fields
.field private db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private mEntityCursor:Luk/co/alt236/easycursor/EasyCursor;

.field private mHideActionBar:Z

.field private mTagId:Ljava/lang/Long;

.field private mTagsCursor:Luk/co/alt236/easycursor/EasyCursor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 68
    iput-object v0, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagId:Ljava/lang/Long;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mHideActionBar:Z

    return-void
.end method

.method private doSponsorship(Lcom/genie_connect/android/db/config/BaseConfig;)V
    .locals 3
    .param p1, "config"    # Lcom/genie_connect/android/db/config/BaseConfig;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSponsorCampaignsDb()Lcom/genie_connect/android/db/access/DbSponsorCampaign;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/DbSponsorCampaign;->getCategorySponsorhipOverride(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 74
    .local v0, "override":Ljava/lang/Long;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    sget-object v1, Lcom/eventgenie/android/ui/help/UIUtils$Layout;->GENERIC_LIST:Lcom/eventgenie/android/ui/help/UIUtils$Layout;

    invoke-static {v1, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayout(Lcom/eventgenie/android/ui/help/UIUtils$Layout;Lcom/eventgenie/android/activities/base/GenieActivity;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 84
    .local v9, "b":Landroid/os/Bundle;
    if-eqz v9, :cond_2

    .line 85
    const-string v1, "entity_id"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "entity_id"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagId:Ljava/lang/Long;

    .line 88
    :cond_0
    const-string v1, "associated_entity_name"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 89
    const-string v1, "hide_actionbar"

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mHideActionBar:Z

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 97
    iget-boolean v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mHideActionBar:Z

    if-eqz v1, :cond_3

    .line 98
    sget v1, Lcom/eventgenie/android/R$id;->action_bar:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 99
    .local v7, "actionBar":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .end local v7    # "actionBar":Landroid/view/View;
    :cond_1
    :goto_1
    sget-object v1, Lcom/eventgenie/android/activities/others/categories/TagListActivity$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ TAGLISTACTIVITY: No idea what to do with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 139
    :goto_2
    new-instance v0, Landroid/support/v4/widget/SimpleCursorAdapter;

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_tagv2:I

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagsCursor:Luk/co/alt236/easycursor/EasyCursor;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "label"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    new-array v5, v1, [I

    const/4 v1, 0x0

    const v6, 0x1020014

    aput v6, v5, v1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 149
    .local v0, "adapterTagsV2":Landroid/widget/ListAdapter;
    sget-object v1, Lcom/eventgenie/android/activities/others/categories/TagListActivity$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 188
    const/4 v8, 0x0

    .line 192
    .local v8, "adapterEntities":Landroid/widget/ListAdapter;
    :goto_3
    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v12, 0x1

    .line 193
    .local v12, "isTagsAdaptorPopulated":Z
    :goto_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v11, 0x1

    .line 195
    .local v11, "isEntityAdaptorPopulated":Z
    :goto_5
    if-eqz v12, :cond_6

    if-eqz v11, :cond_6

    .line 197
    new-instance v13, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v13}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    .line 198
    .local v13, "mergeAdapter":Lcom/commonsware/cwac/merge/MergeAdapter;
    invoke-virtual {v13, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    invoke-virtual {v13, v8}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    invoke-virtual {p0, v13}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    .end local v13    # "mergeAdapter":Lcom/commonsware/cwac/merge/MergeAdapter;
    :goto_6
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 216
    return-void

    .line 92
    .end local v0    # "adapterTagsV2":Landroid/widget/ListAdapter;
    .end local v8    # "adapterEntities":Landroid/widget/ListAdapter;
    .end local v11    # "isEntityAdaptorPopulated":Z
    .end local v12    # "isTagsAdaptorPopulated":Z
    :cond_2
    const-string v1, "^ TagListActivity bundle NULL"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ^TAGLISTACTIVITY mTagId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTagsV2()Lcom/genie_connect/android/db/access/DbTagsV2;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbTagsV2;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v10

    .line 103
    .local v10, "c":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v10}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    const-string v2, "label"

    const-string v3, ""

    invoke-interface {v10, v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 110
    .end local v10    # "c":Luk/co/alt236/easycursor/EasyCursor;
    :pswitch_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getAppropriateConfig(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->doSponsorship(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 111
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTagsV2()Lcom/genie_connect/android/db/access/DbTagsV2;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbTagsV2;->getRelevantChildTagsForEntity(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagsCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 112
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/DbExhibitors;->search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntityCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto/16 :goto_2

    .line 115
    :pswitch_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getAppropriateConfig(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->doSponsorship(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 116
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTagsV2()Lcom/genie_connect/android/db/access/DbTagsV2;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbTagsV2;->getRelevantChildTagsForEntity(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagsCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 117
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getProductsDb()Lcom/genie_connect/android/db/access/DbProducts;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/DbProducts;->search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntityCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto/16 :goto_2

    .line 120
    :pswitch_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getAppropriateConfig(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->doSponsorship(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 121
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTagsV2()Lcom/genie_connect/android/db/access/DbTagsV2;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbTagsV2;->getRelevantChildTagsForEntity(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagsCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 122
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getPoisDb()Lcom/genie_connect/android/db/access/DbPoi;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/DbPoi;->search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntityCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto/16 :goto_2

    .line 125
    :pswitch_3
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getAppropriateConfig(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->doSponsorship(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 126
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTagsV2()Lcom/genie_connect/android/db/access/DbTagsV2;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbTagsV2;->getRelevantChildTagsForEntity(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagsCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 127
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getApprefs()Lcom/genie_connect/android/db/access/DbAppRefs;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/DbAppRefs;->search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntityCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto/16 :goto_2

    .line 130
    :pswitch_4
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getAppropriateConfig(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->doSponsorship(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 131
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTagsV2()Lcom/genie_connect/android/db/access/DbTagsV2;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagId:Ljava/lang/Long;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbTagsV2;->getRelevantChildTagsForEntity(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagsCursor:Luk/co/alt236/easycursor/EasyCursor;

    .line 132
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->db:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagId:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/DbSpeakers;->search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntityCursor:Luk/co/alt236/easycursor/EasyCursor;

    goto/16 :goto_2

    .line 151
    .restart local v0    # "adapterTagsV2":Landroid/widget/ListAdapter;
    :pswitch_5
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntityCursor:Luk/co/alt236/easycursor/EasyCursor;

    sget-object v3, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->SingleLineLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    invoke-static {p0, v1, v2, v3}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getExhibitorListAdapter(Landroid/content/Context;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v8

    .line 156
    .restart local v8    # "adapterEntities":Landroid/widget/ListAdapter;
    goto/16 :goto_3

    .line 158
    .end local v8    # "adapterEntities":Landroid/widget/ListAdapter;
    :pswitch_6
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntityCursor:Luk/co/alt236/easycursor/EasyCursor;

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v8

    .line 164
    .restart local v8    # "adapterEntities":Landroid/widget/ListAdapter;
    goto/16 :goto_3

    .line 166
    .end local v8    # "adapterEntities":Landroid/widget/ListAdapter;
    :pswitch_7
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntityCursor:Luk/co/alt236/easycursor/EasyCursor;

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v8

    .line 172
    .restart local v8    # "adapterEntities":Landroid/widget/ListAdapter;
    goto/16 :goto_3

    .line 174
    .end local v8    # "adapterEntities":Landroid/widget/ListAdapter;
    :pswitch_8
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntityCursor:Luk/co/alt236/easycursor/EasyCursor;

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v8

    .line 180
    .restart local v8    # "adapterEntities":Landroid/widget/ListAdapter;
    goto/16 :goto_3

    .line 182
    .end local v8    # "adapterEntities":Landroid/widget/ListAdapter;
    :pswitch_9
    new-instance v8, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntityCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    invoke-direct {v8, p0, v1, v2, v3}, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;J)V

    .line 186
    .restart local v8    # "adapterEntities":Landroid/widget/ListAdapter;
    goto/16 :goto_3

    .line 192
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 193
    .restart local v12    # "isTagsAdaptorPopulated":Z
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 203
    .restart local v11    # "isEntityAdaptorPopulated":Z
    :cond_6
    if-eqz v12, :cond_7

    .line 204
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    :goto_7
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    goto/16 :goto_6

    .line 205
    :cond_7
    if-eqz v11, :cond_8

    .line 206
    invoke-virtual {p0, v8}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_7

    .line 209
    :cond_8
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_7

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 149
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntityCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->close(Landroid/database/Cursor;)V

    .line 221
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mTagsCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->close(Landroid/database/Cursor;)V

    .line 222
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onDestroy()V

    .line 223
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 228
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lcom/eventgenie/android/R$id;->tagv2_row:I

    if-ne v2, v3, :cond_0

    .line 229
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/eventgenie/android/activities/others/categories/TagListActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 232
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "associated_entity_name"

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 233
    const-string v2, "entity_id"

    invoke-virtual {v0, v2, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 235
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 236
    const-string/jumbo v2, "tagsv2"

    invoke-static {p0, v2, p4, p5}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyEntityDetailsOpen(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 237
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 241
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->mEntityCursor:Luk/co/alt236/easycursor/EasyCursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/others/categories/TagListActivity;->requery(Landroid/database/Cursor;)V

    .line 246
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onResume()V

    .line 247
    return-void
.end method
