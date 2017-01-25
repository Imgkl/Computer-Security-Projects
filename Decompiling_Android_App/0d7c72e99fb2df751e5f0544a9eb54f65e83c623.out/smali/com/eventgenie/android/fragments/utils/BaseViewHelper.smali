.class abstract Lcom/eventgenie/android/fragments/utils/BaseViewHelper;
.super Ljava/lang/Object;
.source "BaseViewHelper.java"


# instance fields
.field private final mActivity:Landroid/support/v4/app/FragmentActivity;

.field private final mConfig:Lcom/genie_connect/android/db/config/AppConfig;

.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private final mTitleColour:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2
    .param p1, "a"    # Landroid/support/v4/app/FragmentActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 67
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 68
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->mActivity:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->mActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getDetailsTitleColour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->mTitleColour:Ljava/lang/Integer;

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->mTitleColour:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method protected addMapLocations(Ljava/util/List;ZLcom/commonsware/cwac/merge/MergeAdapter;)V
    .locals 11
    .param p2, "interactiveMapsAvailable"    # Z
    .param p3, "adapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;Z",
            "Lcom/commonsware/cwac/merge/MergeAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "locationList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    const/4 v10, 0x0

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$layout;->list_section_header_holo:I

    invoke-virtual {v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 80
    .local v2, "locationHeaderView":Landroid/view/View;
    sget v6, Lcom/eventgenie/android/R$string;->exhibitor_location:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 81
    invoke-virtual {p3, v2}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 87
    .local v4, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$layout;->list_item_location:I

    invoke-virtual {v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 88
    .local v3, "locationView":Landroid/view/View;
    sget v6, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 89
    .local v5, "tLocation":Landroid/widget/TextView;
    sget v6, Lcom/eventgenie/android/R$id;->btn_map:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 90
    .local v0, "button":Landroid/widget/Button;
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    if-eqz p2, :cond_0

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 95
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    :cond_1
    invoke-virtual {p3, v3}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 101
    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "locationHeaderView":Landroid/view/View;
    .end local v3    # "locationView":Landroid/view/View;
    .end local v4    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5    # "tLocation":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method public createExpandableListView(Landroid/widget/ResourceCursorTreeAdapter;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p1, "a"    # Landroid/widget/ResourceCursorTreeAdapter;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 112
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/ResourceCursorTreeAdapter;->getGroupCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$layout;->page_generic_expandablelist:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 114
    sget v1, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->mActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v2, Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 115
    sget v1, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 116
    sget v1, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p2}, Landroid/widget/ExpandableListView;->setTag(Ljava/lang/Object;)V

    .line 119
    :cond_0
    return-object v0
.end method

.method public createListFragment(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 127
    new-instance v0, Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;

    invoke-direct {v0}, Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;-><init>()V

    .line 128
    .local v0, "fragment":Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;
    invoke-virtual {v0, p1, p2}, Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;->setAdapterLazyly(Landroid/widget/ListAdapter;Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;->setRetainInstance(Z)V

    .line 134
    :goto_0
    return-object v0

    .line 131
    .end local v0    # "fragment":Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "fragment":Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;
    goto :goto_0
.end method

.method public createListFragmentInfo(IILjava/lang/String;)Lcom/eventgenie/android/container/FragmentInfo;
    .locals 3
    .param p1, "type"    # I
    .param p2, "entityId"    # I
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "ENTITY_ID"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    const-string v2, "LIST_TYPE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    const-string v2, "LIST_TAG"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v1, Lcom/eventgenie/android/container/FragmentInfo;

    const-class v2, Lcom/eventgenie/android/fragments/other/VerticalLayoutFragment;

    invoke-direct {v1, v2, v0}, Lcom/eventgenie/android/container/FragmentInfo;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 145
    .local v1, "info":Lcom/eventgenie/android/container/FragmentInfo;
    return-object v1
.end method

.method public createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$layout;->page_generic_list:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 160
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/eventgenie/android/R$id;->list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 161
    .local v0, "list":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->mActivity:Landroid/support/v4/app/FragmentActivity;

    check-cast v2, Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 169
    .end local v0    # "list":Landroid/widget/ListView;
    :goto_0
    return-object v1

    .line 165
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ BASEVIEWHELPER: Adapter has no views \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 166
    const/4 v1, 0x0

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method protected getActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->mActivity:Landroid/support/v4/app/FragmentActivity;

    return-object v0
.end method

.method protected getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->mConfig:Lcom/genie_connect/android/db/config/AppConfig;

    return-object v0
.end method

.method protected getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    return-object v0
.end method

.method public getTitleColour()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/eventgenie/android/fragments/utils/BaseViewHelper;->mTitleColour:Ljava/lang/Integer;

    return-object v0
.end method
