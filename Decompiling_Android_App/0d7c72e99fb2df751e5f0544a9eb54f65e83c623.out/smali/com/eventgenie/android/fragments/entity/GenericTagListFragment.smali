.class public Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;
.source "GenericTagListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/eventgenie/android/activities/others/categories/GenieCategories;
.implements Lcom/eventgenie/android/fragments/base/EntityFragment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/eventgenie/android/container/MultiCursorContainer;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/eventgenie/android/activities/others/categories/GenieCategories;",
        "Lcom/eventgenie/android/fragments/base/EntityFragment;"
    }
.end annotation


# static fields
.field private static final CURSOR_CATEGORIES:I = 0x0

.field private static final CURSOR_DATA:I = 0x1

.field private static final CURSOR_SPONSORSHIP:I = 0x2

.field private static final ENTITY_TYPE:Ljava/lang/String; = "entity_type"

.field private static final PARENT_TAG:Ljava/lang/String; = "parent_tag"


# instance fields
.field private alreadyLoadedCursors:Z

.field private emptyView:Landroid/view/View;

.field private isFav:Z

.field private mContainer:Lcom/eventgenie/android/container/MultiCursorContainer;

.field protected mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

.field private mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private mTryNowButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->alreadyLoadedCursors:Z

    return-void
.end method

.method private getOwnListAdapter(Lcom/eventgenie/android/container/MultiCursorContainer;)Landroid/widget/ListAdapter;
    .locals 14
    .param p1, "container"    # Lcom/eventgenie/android/container/MultiCursorContainer;

    .prologue
    .line 106
    new-instance v12, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v12}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    .line 107
    .local v12, "result":Lcom/commonsware/cwac/merge/MergeAdapter;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/eventgenie/android/container/MultiCursorContainer;->getCursor(I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    .line 108
    .local v3, "cursorCategories":Luk/co/alt236/easycursor/EasyCursor;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/eventgenie/android/container/MultiCursorContainer;->getCursor(I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v8

    .line 109
    .local v8, "cursorData":Luk/co/alt236/easycursor/EasyCursor;
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/eventgenie/android/container/MultiCursorContainer;->getCursor(I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v9

    .line 111
    .local v9, "cursorSponsorship":Luk/co/alt236/easycursor/EasyCursor;
    if-nez v3, :cond_0

    .line 112
    const-string v1, "^ GenericTagListFragment: cursorCategories null"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 115
    :cond_0
    if-nez v8, :cond_1

    .line 116
    const-string v1, "^ GenericTagListFragment: cursorData null"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 119
    :cond_1
    if-nez v9, :cond_2

    .line 120
    const-string v1, "^ GenericTagListFragment: cursorSponsorship null"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 130
    :goto_0
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_tagv2:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "label"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const v13, 0x1020014

    aput v13, v5, v6

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 138
    .local v0, "adapterTagsV2":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v8, v5}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v7

    .line 142
    .local v7, "adapterEntities":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v11, 0x1

    .line 143
    .local v11, "isTagsAdaptorPopulated":Z
    :goto_1
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v10, 0x1

    .line 145
    .local v10, "isEntityAdaptorPopulated":Z
    :goto_2
    if-eqz v11, :cond_6

    if-eqz v10, :cond_6

    .line 147
    invoke-virtual {v12, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    invoke-virtual {v12, v7}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    invoke-virtual {p0, v12}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 164
    :goto_3
    return-object v12

    .line 122
    .end local v0    # "adapterTagsV2":Landroid/widget/ListAdapter;
    .end local v7    # "adapterEntities":Landroid/widget/ListAdapter;
    .end local v10    # "isEntityAdaptorPopulated":Z
    .end local v11    # "isTagsAdaptorPopulated":Z
    :cond_2
    invoke-static {v9}, Lcom/genie_connect/android/db/DbHelper;->has(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getAppropriateConfig(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v1

    const-string v2, "sponsorCampaign"

    invoke-interface {v9, v2}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;)V

    .line 128
    :cond_3
    invoke-static {v9}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    goto :goto_0

    .line 142
    .restart local v0    # "adapterTagsV2":Landroid/widget/ListAdapter;
    .restart local v7    # "adapterEntities":Landroid/widget/ListAdapter;
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 143
    .restart local v11    # "isTagsAdaptorPopulated":Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 152
    .restart local v10    # "isEntityAdaptorPopulated":Z
    :cond_6
    if-eqz v11, :cond_7

    .line 153
    invoke-virtual {v12, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    :goto_4
    invoke-virtual {p0, v12}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    goto :goto_3

    .line 154
    :cond_7
    if-eqz v10, :cond_8

    .line 155
    invoke-virtual {v12, v7}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_4

    .line 158
    :cond_8
    invoke-virtual {v12, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_4
.end method

.method public static newInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;)Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;
    .locals 6
    .param p0, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p1, "tag"    # Ljava/lang/Long;

    .prologue
    .line 356
    new-instance v1, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;-><init>()V

    .line 357
    .local v1, "frag":Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "entity_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 360
    const-string v2, "parent_tag"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 362
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 363
    return-object v1
.end method


# virtual methods
.method public getEnitity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TAGSV2:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getEntityId()J
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "parent_tag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 169
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "entity_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iput-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 175
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 176
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "query_setting_isfavourite"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->isFav:Z

    .line 178
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getLoaderId()I

    move-result v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 179
    invoke-virtual {p0, v3}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->markLoaderAsRunning(Z)V

    .line 180
    iput-boolean v3, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->alreadyLoadedCursors:Z

    .line 181
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
            "Lcom/eventgenie/android/container/MultiCursorContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    const-string v0, "^ GenericTagListFragment: onCreateLoader"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 186
    new-instance v1, Lcom/genie_connect/android/db/loaders/GenericTagLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v0, "entity_type"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v3, "parent_tag"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/genie_connect/android/db/loaders/GenericTagLoader;-><init>(Landroid/app/Activity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Long;)V

    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 195
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayoutForFragment(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 196
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->emptyView:Landroid/view/View;

    .line 197
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mTryNowButton:Landroid/widget/Button;

    .line 198
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mTryNowButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mTryNowButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mTryNowButton:Landroid/widget/Button;

    new-instance v2, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment$1;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment$1;-><init>(Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    :cond_0
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 210
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 214
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mContainer:Lcom/eventgenie/android/container/MultiCursorContainer;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mContainer:Lcom/eventgenie/android/container/MultiCursorContainer;

    invoke-virtual {v0}, Lcom/eventgenie/android/container/MultiCursorContainer;->closeCursors()V

    .line 222
    :cond_0
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onDestroy()V

    .line 223
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
    .line 227
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->tagv2_row:I

    if-ne v0, v1, :cond_0

    .line 228
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/eventgenie/android/activities/others/categories/TagListActivity;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v7, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 232
    .local v6, "b":Landroid/os/Bundle;
    const-string v0, "associated_entity_name"

    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 233
    const-string v0, "entity_id"

    invoke-virtual {v6, v0, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 235
    invoke-virtual {v7, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 236
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "tagsv2"

    invoke-static {v0, v1, p4, p5}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyEntityDetailsOpen(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 237
    invoke-virtual {p0, v7}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->startActivityCarefully(Landroid/content/Intent;)V

    .line 241
    .end local v6    # "b":Landroid/os/Bundle;
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Lcom/eventgenie/android/container/MultiCursorContainer;)V
    .locals 4
    .param p2, "result"    # Lcom/eventgenie/android/container/MultiCursorContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/eventgenie/android/container/MultiCursorContainer;",
            ">;",
            "Lcom/eventgenie/android/container/MultiCursorContainer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/eventgenie/android/container/MultiCursorContainer;>;"
    const-string v2, "^ GenericTagListFragment: onLoadFinished"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 257
    .local v1, "position":I
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getOwnListAdapter(Lcom/eventgenie/android/container/MultiCursorContainer;)Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    iget-object v2, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mContainer:Lcom/eventgenie/android/container/MultiCursorContainer;

    if-eqz v2, :cond_0

    .line 261
    :cond_0
    iput-object p2, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mContainer:Lcom/eventgenie/android/container/MultiCursorContainer;

    .line 263
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 264
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/eventgenie/android/container/MultiCursorContainer;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 265
    iget-boolean v2, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->isFav:Z

    if-eqz v2, :cond_3

    .line 266
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/android/db/config/misc/Label;->NO_FAVOURITES_AVAILABLE:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->setupEmptyViewForNoFavs(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    .line 285
    .end local v0    # "label":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->markLoaderAsRunning(Z)V

    .line 286
    return-void

    .line 270
    .restart local v0    # "label":Ljava/lang/String;
    :cond_2
    sget v2, Lcom/eventgenie/android/R$string;->message_you_have_not_added_any_favourites:I

    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->setupEmptyViewForNoFavs(ILandroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 275
    .end local v0    # "label":Ljava/lang/String;
    :cond_3
    sget v2, Lcom/eventgenie/android/R$string;->no_data:I

    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->setupEmptyViewTextOnly(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 75
    check-cast p2, Lcom/eventgenie/android/container/MultiCursorContainer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Lcom/eventgenie/android/container/MultiCursorContainer;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Lcom/eventgenie/android/container/MultiCursorContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Lcom/eventgenie/android/container/MultiCursorContainer;>;"
    const-string v0, "^ GenericTagListFragment: onLoaderReset"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mContainer:Lcom/eventgenie/android/container/MultiCursorContainer;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mContainer:Lcom/eventgenie/android/container/MultiCursorContainer;

    invoke-virtual {v0}, Lcom/eventgenie/android/container/MultiCursorContainer;->closeCursors()V

    .line 249
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 290
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onResume()V

    .line 293
    iget-boolean v0, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->alreadyLoadedCursors:Z

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getLoaderId()I

    move-result v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->markLoaderAsRunning(Z)V

    .line 297
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->alreadyLoadedCursors:Z

    .line 298
    return-void
.end method

.method protected setupEmptyViewForNoFavs(ILandroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "resId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 301
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 302
    .local v0, "emtpyText":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 303
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/genie_connect/android/utils/string/StringUtils;->addDrawableSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mTryNowButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mTryNowButton:Landroid/widget/Button;

    sget v2, Lcom/eventgenie/android/R$string;->button_try_now:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 309
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mTryNowButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    :goto_0
    return-object p2

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mTryNowButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setupEmptyViewForNoFavs(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 324
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 325
    .local v0, "emtpyText":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/genie_connect/android/utils/string/StringUtils;->addDrawableSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mTryNowButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mTryNowButton:Landroid/widget/Button;

    sget v2, Lcom/eventgenie/android/R$string;->button_try_now:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 332
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mTryNowButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 337
    :goto_0
    return-object p2

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->mTryNowButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setupEmptyViewTextOnly(ILandroid/view/View;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/eventgenie/android/fragments/entity/GenericTagListFragment;->setupEmptyViewTextOnly(Ljava/lang/String;Landroid/view/View;)V

    .line 342
    return-void
.end method

.method protected setupEmptyViewTextOnly(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 345
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    return-void
.end method
