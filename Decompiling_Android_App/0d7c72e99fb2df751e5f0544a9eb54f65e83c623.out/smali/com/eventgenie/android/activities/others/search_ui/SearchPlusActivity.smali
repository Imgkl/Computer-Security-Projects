.class public Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;
.super Lcom/eventgenie/android/activities/base/GenieAbcActivity;
.source "SearchPlusActivity.java"

# interfaces
.implements Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment$OnItemExploredListener;


# static fields
.field private static mPopFragmentStackOnResume:Z


# instance fields
.field private mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private mFilterTagsV2ForSessions:Z

.field private mTagSearchView:Landroid/widget/SearchView;

.field private mTagTreeRoot:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextQueryListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mViewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 71
    new-instance v0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity$1;-><init>(Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTextQueryListener:Landroid/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method public static refreshParents(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Z)V
    .locals 7
    .param p1, "shouldSelect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "root":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 290
    if-eqz p1, :cond_5

    .line 291
    invoke-virtual {p0, v6}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->setSelected(Z)V

    .line 295
    :goto_0
    move-object v3, p0

    .line 297
    .local v3, "parent":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    :cond_0
    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getParent()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    move-result-object v3

    .line 298
    if-eqz v3, :cond_3

    .line 299
    if-eqz p1, :cond_6

    .line 300
    const/4 v0, 0x1

    .line 301
    .local v0, "allChildrenAreSelected":Z
    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->hasChildren()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 302
    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 303
    .local v1, "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->isSelected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 304
    const/4 v0, 0x0

    .line 309
    .end local v1    # "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz v0, :cond_3

    .line 310
    invoke-virtual {v3, v6}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->setSelected(Z)V

    .line 316
    .end local v0    # "allChildrenAreSelected":Z
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v4}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->isRootParent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    :cond_4
    return-void

    .line 293
    .end local v3    # "parent":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    :cond_5
    invoke-virtual {p0, v5}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->setSelected(Z)V

    goto :goto_0

    .line 313
    .restart local v3    # "parent":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    :cond_6
    invoke-virtual {v3, v5}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->setSelected(Z)V

    goto :goto_1
.end method

.method private selectAllChildren(ZLcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V
    .locals 5
    .param p1, "select"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "root":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 260
    if-eqz p2, :cond_1

    .line 261
    invoke-virtual {p2}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 262
    .local v0, "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {v0, v4}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->setSelected(Z)V

    .line 264
    invoke-direct {p0, v4, v0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->selectAllChildren(ZLcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v0, v3}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->setSelected(Z)V

    .line 268
    invoke-direct {p0, v3, v0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->selectAllChildren(ZLcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    goto :goto_0

    .line 272
    .end local v0    # "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public static setmPopFragmentStackOnResume(Z)V
    .locals 0
    .param p0, "mPopFragmentStackOnResume"    # Z

    .prologue
    .line 320
    sput-boolean p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mPopFragmentStackOnResume:Z

    .line 321
    return-void
.end method


# virtual methods
.method public OnItemAccesed(Lcom/eventgenie/android/ui/searchui/CheckboxListItem;)V
    .locals 0
    .param p1, "item"    # Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->addFragmentToStack(Lcom/eventgenie/android/ui/searchui/CheckboxListItem;)V

    .line 165
    return-void
.end method

.method public OnItemClicked(Lcom/eventgenie/android/ui/searchui/CheckboxListItem;)V
    .locals 5
    .param p1, "item"    # Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getTagItem()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    move-result-object v0

    .line 170
    .local v0, "tagItem":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getCheckedValue()Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->ALL:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    if-ne v1, v2, :cond_1

    .line 171
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getTagItem()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->setSelected(Z)V

    .line 172
    invoke-direct {p0, v4, v0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->selectAllChildren(ZLcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    .line 173
    invoke-static {v0, v4}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->refreshParents(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Z)V

    .line 180
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->refreshBottomSearchButtons()V

    .line 181
    return-void

    .line 175
    :cond_1
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getCheckedValue()Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->NONE:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    if-ne v1, v2, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getTagItem()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->setSelected(Z)V

    .line 177
    invoke-direct {p0, v3, v0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->selectAllChildren(ZLcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    .line 178
    invoke-static {v0, v3}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->refreshParents(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Z)V

    goto :goto_0
.end method

.method addFragmentToStack(Lcom/eventgenie/android/ui/searchui/CheckboxListItem;)V
    .locals 3
    .param p1, "item"    # Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    .prologue
    .line 87
    new-instance v1, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;

    invoke-virtual {p1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getTagItem()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;-><init>(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    .line 91
    .local v1, "newFragment":Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 92
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;

    .line 93
    sget v2, Lcom/eventgenie/android/R$id;->container:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 94
    const/16 v2, 0x1001

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 95
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 96
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 97
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 102
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-static {v4}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->setmPopFragmentStackOnResume(Z)V

    .line 105
    invoke-static {}, Lcom/genie_connect/android/bl/tags/TagTreeManager;->clearTagTree()V

    .line 107
    sget v2, Lcom/eventgenie/android/R$layout;->activity_tag_search_ui:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->setContentView(I)V

    .line 108
    sget v2, Lcom/eventgenie/android/R$id;->tagSearch:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTagSearchView:Landroid/widget/SearchView;

    .line 109
    sget v2, Lcom/eventgenie/android/R$id;->flipper:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 111
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTagSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTextQueryListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 115
    const-string v2, "associated_entity_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 116
    const-string/jumbo v2, "use_tagsv2_for_searching"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mFilterTagsV2ForSessions:Z

    .line 122
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->search_label:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 125
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getTagsV2()Lcom/genie_connect/android/db/access/DbTagsV2;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/access/DbTagsV2;->getTagTree(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTagTreeRoot:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 127
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTagTreeRoot:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTagTreeRoot:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 128
    if-nez p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$id;->container:I

    new-instance v4, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;

    iget-object v5, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTagTreeRoot:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    invoke-direct {v4, v5}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;-><init>(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 132
    :cond_0
    sget v2, Lcom/eventgenie/android/R$id;->breadcrumbs:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentBreadCrumbs;

    .line 133
    .local v1, "crumbs":Landroid/support/v4/app/FragmentBreadCrumbs;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 134
    invoke-virtual {v1, v6}, Landroid/support/v4/app/FragmentBreadCrumbs;->setScrollable(Z)V

    .line 135
    invoke-virtual {v1, p0}, Landroid/support/v4/app/FragmentBreadCrumbs;->setActivity(Landroid/support/v4/app/FragmentActivity;)V

    .line 136
    invoke-virtual {v1, v6}, Landroid/support/v4/app/FragmentBreadCrumbs;->setTopEntryClearsStack(Z)V

    .line 148
    const/16 v2, 0x96

    invoke-static {v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->dipToPixels(ILandroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->setCrumbMaximumWidth(I)V

    .line 150
    sget v2, Lcom/eventgenie/android/R$drawable;->shape_tag_breadcrumb_background:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->setCrumbBackgroundResource(I)V

    .line 151
    sget v2, Lcom/eventgenie/android/R$drawable;->ic_action_blue_home:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentBreadCrumbs;->setTitleIcon(I)V

    .line 153
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 154
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showActionResetWithText(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showActionSearchWithText(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->refreshBottomSearchButtons()V

    .line 160
    .end local v1    # "crumbs":Landroid/support/v4/app/FragmentBreadCrumbs;
    :goto_0
    return-void

    .line 119
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SearchPlusActivity has no entity!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v6}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "paramMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public onResetClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 189
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTagTreeRoot:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    invoke-direct {p0, v7, v3}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->selectAllChildren(ZLcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    .line 191
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 192
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    .line 193
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$id;->container:I

    new-instance v5, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;

    iget-object v6, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTagTreeRoot:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    invoke-direct {v5, v6}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;-><init>(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 198
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTagSearchView:Landroid/widget/SearchView;

    const-string v4, ""

    invoke-virtual {v3, v4, v7}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 199
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->refreshBottomSearchButtons()V

    .line 200
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 204
    sget-boolean v3, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mPopFragmentStackOnResume:Z

    if-eqz v3, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 206
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    .line 207
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->setmPopFragmentStackOnResume(Z)V

    .line 213
    .end local v0    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_1
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onResume()V

    .line 214
    return-void
.end method

.method public onSearchClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTagSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->clearFocus()V

    .line 220
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTagSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 221
    .local v4, "searchText":Ljava/lang/String;
    new-instance v3, Lcom/eventgenie/android/utils/intents/NavigationIntent;

    const-class v5, Lcom/eventgenie/android/activities/others/search_ui/TagSearchResultsActivity;

    invoke-direct {v3, p0, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v3, "intent":Lcom/eventgenie/android/utils/intents/NavigationIntent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "associated_entity_name"

    iget-object v6, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 225
    const-string v5, "EXTRA_TAG_TEXT_FILTER"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTagTreeRoot:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    invoke-static {v5}, Lcom/genie_connect/android/bl/tags/TagTreeManager;->setTagTree(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    .line 229
    invoke-virtual {v3, v0}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->putExtras(Landroid/os/Bundle;)V

    .line 231
    iget-boolean v5, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mFilterTagsV2ForSessions:Z

    if-eqz v5, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 234
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 235
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 236
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "bundle":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 239
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v5, "use_tagsv2_for_searching"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    const-string v5, "EXTRA_TAG_TEXT_FILTER"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 243
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v2}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->setResult(ILandroid/content/Intent;)V

    .line 244
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->finish()V

    .line 250
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 248
    :cond_1
    invoke-virtual {v3}, Lcom/eventgenie/android/utils/intents/NavigationIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public refreshBottomSearchButtons()V
    .locals 2

    .prologue
    .line 253
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTagTreeRoot:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTagTreeRoot:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->hasAnyNodeChecked()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->mTagSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 255
    .local v0, "enableSearchButtons":Z
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->enableActionResetWithText(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->enableActionSearchWithText(Z)V

    .line 257
    return-void

    .line 253
    .end local v0    # "enableSearchButtons":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectAllChildrenAndRefresh(ZLcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V
    .locals 5
    .param p1, "select"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "root":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 275
    invoke-virtual {p2}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 276
    .local v0, "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {v0, v3}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->setSelected(Z)V

    .line 278
    invoke-direct {p0, v3, v0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->selectAllChildren(ZLcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v0, v4}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->setSelected(Z)V

    .line 282
    invoke-direct {p0, v4, v0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->selectAllChildren(ZLcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    goto :goto_0

    .line 285
    .end local v0    # "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    :cond_1
    invoke-static {p2, v3}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->refreshParents(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Z)V

    .line 286
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->refreshBottomSearchButtons()V

    .line 287
    return-void
.end method
