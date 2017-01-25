.class public Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SearchPlusFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment$OnItemExploredListener;
    }
.end annotation


# instance fields
.field private checkboxList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/ui/searchui/CheckboxListItem;",
            ">;"
        }
    .end annotation
.end field

.field public mAdapter:Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;

.field private final mFragmentRoot:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;"
        }
    .end annotation
.end field

.field private tvSelectAll:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "fragmentRoot":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->mFragmentRoot:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->refreshSelectAllButton()V

    return-void
.end method

.method private static hasAnyChildrenChecked(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "mRoot":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v2, 0x0

    .line 168
    .local v2, "ret":Z
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 169
    .local v0, "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    const/4 v2, 0x1

    .line 180
    .end local v0    # "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    :cond_1
    :goto_0
    return v2

    .line 174
    .restart local v0    # "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    :cond_2
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->hasAnyChildrenChecked(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    const/4 v2, 0x1

    .line 176
    goto :goto_0
.end method

.method private refreshCheckboxState()V
    .locals 5

    .prologue
    .line 144
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->mFragmentRoot:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    if-eqz v3, :cond_1

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ SearchPlusFragment onResume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->mFragmentRoot:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 150
    :goto_0
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->mFragmentRoot:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    invoke-static {v3}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getChildItems(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->checkboxList:Ljava/util/List;

    .line 151
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->checkboxList:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 153
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->checkboxList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    .line 154
    .local v0, "checkboxMember":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    invoke-virtual {v0}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getTagItem()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    move-result-object v1

    .line 155
    .local v1, "checkboxTagItem":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    sget-object v3, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->ALL:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->setCheckedValue(Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;)V

    goto :goto_1

    .line 148
    .end local v0    # "checkboxMember":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    .end local v1    # "checkboxTagItem":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v3, "^ SearchPlusFragment onResume root null"

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .restart local v0    # "checkboxMember":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    .restart local v1    # "checkboxTagItem":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->hasAnyChildrenChecked(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    sget-object v3, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->SOME:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    invoke-virtual {v0, v3}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->setCheckedValue(Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;)V

    goto :goto_1

    .line 164
    .end local v0    # "checkboxMember":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    .end local v1    # "checkboxTagItem":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    :cond_3
    return-void
.end method

.method private refreshSelectAllButton()V
    .locals 5

    .prologue
    .line 190
    const/4 v0, 0x1

    .line 191
    .local v0, "allCheckboxesChecked":Z
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->checkboxList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    .line 192
    .local v1, "checkbox":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    invoke-virtual {v1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getCheckedValue()Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->ALL:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    if-eq v3, v4, :cond_0

    .line 193
    const/4 v0, 0x0

    .line 197
    .end local v1    # "checkbox":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    :cond_1
    if-eqz v0, :cond_2

    .line 198
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->tvSelectAll:Landroid/widget/TextView;

    sget v4, Lcom/eventgenie/android/R$string;->unselectAll:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_2
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->tvSelectAll:Landroid/widget/TextView;

    sget v4, Lcom/eventgenie/android/R$string;->selectAll:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getFragmentRoot()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->mFragmentRoot:Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 43
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 44
    .local v2, "newStateIsAllChecked":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->checkboxList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    .line 45
    .local v1, "item":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    invoke-virtual {v1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getCheckedValue()Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    move-result-object v3

    sget-object v4, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->ALL:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    if-eq v3, v4, :cond_0

    .line 46
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 51
    .end local v1    # "item":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->tvSelectAll:Landroid/widget/TextView;

    sget v4, Lcom/eventgenie/android/R$string;->unselectAll:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_0
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->checkboxList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    .line 59
    .restart local v1    # "item":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    sget-object v3, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->ALL:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    invoke-virtual {v1, v3}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->setCheckedValue(Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;)V

    .line 65
    :goto_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;

    invoke-virtual {v3, v1}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->OnItemClicked(Lcom/eventgenie/android/ui/searchui/CheckboxListItem;)V

    goto :goto_1

    .line 55
    .end local v1    # "item":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    :cond_2
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->tvSelectAll:Landroid/widget/TextView;

    sget v4, Lcom/eventgenie/android/R$string;->selectAll:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    .restart local v1    # "item":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    :cond_3
    sget-object v3, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->NONE:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    invoke-virtual {v1, v3}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->setCheckedValue(Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;)V

    goto :goto_2

    .line 68
    .end local v1    # "item":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    :cond_4
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->checkboxList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 69
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->checkboxList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    invoke-virtual {v3}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getTagItem()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->refreshParents(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Z)V

    .line 71
    :cond_5
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusActivity;->refreshBottomSearchButtons()V

    .line 72
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->mAdapter:Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;

    invoke-virtual {v3}, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;->notifyDataSetChanged()V

    .line 74
    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->checkboxList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    .line 75
    .restart local v1    # "item":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    const-string v3, "^ SearchPlusFragment %s = %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getText()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getCheckedValue()Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 78
    .end local v1    # "item":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    :cond_6
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    sget v1, Lcom/eventgenie/android/R$layout;->fragment_tag_search_list:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "rootView":Landroid/view/View;
    sget v1, Lcom/eventgenie/android/R$id;->selectAllCheckbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->tvSelectAll:Landroid/widget/TextView;

    .line 86
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->refreshCheckboxState()V

    .line 87
    new-instance v1, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment$1;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->checkboxList:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment$1;-><init>(Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->mAdapter:Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;

    .line 109
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->mAdapter:Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->mAdapter:Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->tvSelectAll:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 119
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onPause()V

    .line 124
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 129
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->refreshSelectAllButton()V

    .line 130
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 135
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 140
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/search_ui/SearchPlusFragment;->tvSelectAll:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    return-void
.end method
