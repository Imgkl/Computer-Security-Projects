.class public Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SackOfViewsAdapter.java"


# instance fields
.field private views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    iput-object v2, p0, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;->views:Ljava/util/List;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;->views:Ljava/util/List;

    .line 61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;->views:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;->views:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;->views:Ljava/util/List;

    .line 75
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;->views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 161
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 112
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 144
    iget-object v1, p0, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;->views:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 146
    .local v0, "result":Landroid/view/View;
    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0, p1, p3}, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;->newView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;->views:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public hasView(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;->views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method protected newView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 175
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must override newView()!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
