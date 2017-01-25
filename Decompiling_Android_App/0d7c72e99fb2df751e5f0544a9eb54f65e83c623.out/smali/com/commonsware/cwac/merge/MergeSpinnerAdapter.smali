.class public Lcom/commonsware/cwac/merge/MergeSpinnerAdapter;
.super Lcom/commonsware/cwac/merge/MergeAdapter;
.source "MergeSpinnerAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported with MergeSpinnerAdapter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported with MergeSpinnerAdapter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addViews(Ljava/util/List;)V
    .locals 2
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
    .line 87
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported with MergeSpinnerAdapter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addViews(Ljava/util/List;Z)V
    .locals 2
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported with MergeSpinnerAdapter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/commonsware/cwac/merge/MergeSpinnerAdapter;->getPieces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 41
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 43
    .local v2, "size":I
    if-ge p1, v2, :cond_0

    .line 44
    check-cast v1, Landroid/widget/SpinnerAdapter;

    .end local v1    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 52
    .end local v2    # "size":I
    :goto_1
    return-object v3

    .line 49
    .restart local v1    # "piece":Landroid/widget/ListAdapter;
    .restart local v2    # "size":I
    :cond_0
    sub-int/2addr p1, v2

    .line 50
    goto :goto_0

    .line 52
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
