.class public abstract Lcom/github/ignition/core/adapters/EndlessListAdapter;
.super Landroid/widget/BaseAdapter;
.source "EndlessListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private isLoadingData:Z

.field private listView:Landroid/widget/AbsListView;

.field private progressView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listView"    # Landroid/widget/AbsListView;
    .param p3, "progressItemLayoutResId"    # I

    .prologue
    .line 48
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->data:Ljava/util/ArrayList;

    .line 49
    iput-object p2, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->listView:Landroid/widget/AbsListView;

    .line 50
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->progressView:Landroid/view/View;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/app/ExpandableListActivity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/ExpandableListActivity;
    .param p2, "progressItemLayoutResId"    # I

    .prologue
    .line 45
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    invoke-virtual {p1}, Landroid/app/ExpandableListActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ignition/core/adapters/EndlessListAdapter;-><init>(Landroid/app/Activity;Landroid/widget/AbsListView;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/app/ListActivity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/ListActivity;
    .param p2, "progressItemLayoutResId"    # I

    .prologue
    .line 41
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    invoke-virtual {p1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/github/ignition/core/adapters/EndlessListAdapter;-><init>(Landroid/app/Activity;Landroid/widget/AbsListView;I)V

    .line 42
    return-void
.end method

.method private isPositionOfProgressElement(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 163
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->isLoadingData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 185
    invoke-virtual {p0}, Lcom/github/ignition/core/adapters/EndlessListAdapter;->notifyDataSetChanged()V

    .line 186
    return-void
.end method

.method public addAll(Ljava/util/List;Z)V
    .locals 1
    .param p2, "redrawList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 190
    if-eqz p2, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/github/ignition/core/adapters/EndlessListAdapter;->notifyDataSetChanged()V

    .line 193
    :cond_0
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 196
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    iget-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 197
    invoke-virtual {p0}, Lcom/github/ignition/core/adapters/EndlessListAdapter;->notifyDataSetChanged()V

    .line 198
    return-void
.end method

.method protected abstract doGetView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 71
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    const/4 v0, 0x0

    .line 72
    .local v0, "size":I
    iget-object v1, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_0
    iget-boolean v1, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->isLoadingData:Z

    if-eqz v1, :cond_1

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 78
    :cond_1
    return v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    iget-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    iget-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    iget-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 100
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 120
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 168
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/github/ignition/core/adapters/EndlessListAdapter;->isPositionOfProgressElement(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, -0x1

    .line 171
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListView()Landroid/widget/AbsListView;
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    iget-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->listView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method public getProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    iget-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->progressView:Landroid/view/View;

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 153
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/github/ignition/core/adapters/EndlessListAdapter;->isPositionOfProgressElement(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->progressView:Landroid/view/View;

    .line 157
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/ignition/core/adapters/EndlessListAdapter;->doGetView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 176
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    const/4 v0, 0x2

    return v0
.end method

.method public hasItems()Z
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    iget-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/github/ignition/core/adapters/EndlessListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->isLoadingData:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 125
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    invoke-direct {p0, p1}, Lcom/github/ignition/core/adapters/EndlessListAdapter;->isPositionOfProgressElement(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->isLoadingData:Z

    return v0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 201
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    iget-object v0, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 202
    invoke-virtual {p0}, Lcom/github/ignition/core/adapters/EndlessListAdapter;->notifyDataSetChanged()V

    .line 203
    return-void
.end method

.method public setIsLoadingData(Z)V
    .locals 1
    .param p1, "isLoadingData"    # Z

    .prologue
    .line 137
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/github/ignition/core/adapters/EndlessListAdapter;->setIsLoadingData(ZZ)V

    .line 138
    return-void
.end method

.method public setIsLoadingData(ZZ)V
    .locals 0
    .param p1, "isLoadingData"    # Z
    .param p2, "redrawList"    # Z

    .prologue
    .line 141
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    iput-boolean p1, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->isLoadingData:Z

    .line 142
    if-eqz p2, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/github/ignition/core/adapters/EndlessListAdapter;->notifyDataSetChanged()V

    .line 145
    :cond_0
    return-void
.end method

.method public shouldRequestNextPage(III)Z
    .locals 4
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .prologue
    .local p0, "this":Lcom/github/ignition/core/adapters/EndlessListAdapter;, "Lcom/github/ignition/core/adapters/EndlessListAdapter<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 239
    iget-boolean v3, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->isLoadingData:Z

    if-eqz v3, :cond_0

    .line 240
    add-int/lit8 p3, p3, -0x1

    .line 242
    :cond_0
    if-lez p3, :cond_1

    sub-int v3, p3, p2

    if-ne v3, p1, :cond_1

    move v0, v1

    .line 244
    .local v0, "lastItemReached":Z
    :goto_0
    iget-boolean v3, p0, Lcom/github/ignition/core/adapters/EndlessListAdapter;->isLoadingData:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v1

    .end local v0    # "lastItemReached":Z
    :cond_1
    move v0, v2

    .line 242
    goto :goto_0

    .restart local v0    # "lastItemReached":Z
    :cond_2
    move v1, v2

    .line 244
    goto :goto_1
.end method
