.class public Lcom/commonsware/cwac/merge/MergeAdapter;
.super Landroid/widget/BaseAdapter;
.source "MergeAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/commonsware/cwac/merge/MergeAdapter$1;,
        Lcom/commonsware/cwac/merge/MergeAdapter$CascadeDataSetObserver;,
        Lcom/commonsware/cwac/merge/MergeAdapter$EnabledSackAdapter;,
        Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;,
        Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;
    }
.end annotation


# instance fields
.field protected pieces:Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    new-instance v0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;-><init>(Lcom/commonsware/cwac/merge/MergeAdapter$1;)V

    iput-object v0, p0, Lcom/commonsware/cwac/merge/MergeAdapter;->pieces:Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;

    .line 47
    return-void
.end method


# virtual methods
.method public addAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/commonsware/cwac/merge/MergeAdapter;->pieces:Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;

    invoke-virtual {v0, p1}, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->add(Landroid/widget/ListAdapter;)V

    .line 58
    new-instance v0, Lcom/commonsware/cwac/merge/MergeAdapter$CascadeDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/commonsware/cwac/merge/MergeAdapter$CascadeDataSetObserver;-><init>(Lcom/commonsware/cwac/merge/MergeAdapter;Lcom/commonsware/cwac/merge/MergeAdapter$1;)V

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 59
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;Z)V

    .line 70
    return-void
.end method

.method public addView(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {p0, v0, p2}, Lcom/commonsware/cwac/merge/MergeAdapter;->addViews(Ljava/util/List;Z)V

    .line 87
    return-void
.end method

.method public addViews(Ljava/util/List;)V
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
    .line 97
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addViews(Ljava/util/List;Z)V

    .line 98
    return-void
.end method

.method public addViews(Ljava/util/List;Z)V
    .locals 1
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
    .line 110
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 111
    new-instance v0, Lcom/commonsware/cwac/merge/MergeAdapter$EnabledSackAdapter;

    invoke-direct {v0, p1}, Lcom/commonsware/cwac/merge/MergeAdapter$EnabledSackAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;

    invoke-direct {v0, p1}, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter(I)Landroid/widget/ListAdapter;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/commonsware/cwac/merge/MergeAdapter;->getPieces()Ljava/util/List;

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

    .line 149
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 151
    .local v2, "size":I
    if-ge p1, v2, :cond_0

    .line 158
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :goto_1
    return-object v1

    .line 155
    .restart local v1    # "piece":Landroid/widget/ListAdapter;
    .restart local v2    # "size":I
    :cond_0
    sub-int/2addr p1, v2

    .line 156
    goto :goto_0

    .line 158
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 167
    const/4 v2, 0x0

    .line 169
    .local v2, "total":I
    invoke-virtual {p0}, Lcom/commonsware/cwac/merge/MergeAdapter;->getPieces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 170
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 171
    goto :goto_0

    .line 173
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    :cond_0
    return v2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/commonsware/cwac/merge/MergeAdapter;->getPieces()Ljava/util/List;

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

    .line 128
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 130
    .local v2, "size":I
    if-ge p1, v2, :cond_0

    .line 131
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 137
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :goto_1
    return-object v3

    .line 134
    .restart local v1    # "piece":Landroid/widget/ListAdapter;
    .restart local v2    # "size":I
    :cond_0
    sub-int/2addr p1, v2

    .line 135
    goto :goto_0

    .line 137
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/commonsware/cwac/merge/MergeAdapter;->getPieces()Ljava/util/List;

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

    .line 291
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 293
    .local v2, "size":I
    if-ge p1, v2, :cond_0

    .line 294
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 300
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :goto_1
    return-wide v4

    .line 297
    .restart local v1    # "piece":Landroid/widget/ListAdapter;
    .restart local v2    # "size":I
    :cond_0
    sub-int/2addr p1, v2

    .line 298
    goto :goto_0

    .line 300
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 202
    const/4 v4, 0x0

    .line 203
    .local v4, "typeOffset":I
    const/4 v2, -0x1

    .line 205
    .local v2, "result":I
    iget-object v5, p0, Lcom/commonsware/cwac/merge/MergeAdapter;->pieces:Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;

    invoke-virtual {v5}, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->getRawPieces()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;

    .line 206
    .local v1, "piece":Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;
    iget-boolean v5, v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;->isActive:Z

    if-eqz v5, :cond_2

    .line 207
    iget-object v5, v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 209
    .local v3, "size":I
    if-ge p1, v3, :cond_1

    .line 210
    iget-object v5, v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    add-int v2, v4, v5

    .line 220
    .end local v1    # "piece":Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;
    .end local v3    # "size":I
    :cond_0
    return v2

    .line 214
    .restart local v1    # "piece":Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;
    .restart local v3    # "size":I
    :cond_1
    sub-int/2addr p1, v3

    .line 217
    .end local v3    # "size":I
    :cond_2
    iget-object v5, v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v4, v5

    .line 218
    goto :goto_0
.end method

.method protected getPieces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/commonsware/cwac/merge/MergeAdapter;->pieces:Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;

    invoke-virtual {v0}, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->getPieces()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 6
    .param p1, "section"    # I

    .prologue
    .line 305
    const/4 v3, 0x0

    .line 307
    .local v3, "position":I
    invoke-virtual {p0}, Lcom/commonsware/cwac/merge/MergeAdapter;->getPieces()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    .line 308
    .local v2, "piece":Landroid/widget/ListAdapter;
    instance-of v5, v2, Landroid/widget/SectionIndexer;

    if-eqz v5, :cond_2

    move-object v5, v2

    .line 309
    check-cast v5, Landroid/widget/SectionIndexer;

    invoke-interface {v5}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v4

    .line 310
    .local v4, "sections":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 312
    .local v1, "numSections":I
    if-eqz v4, :cond_0

    .line 313
    array-length v1, v4

    .line 316
    :cond_0
    if-ge p1, v1, :cond_1

    .line 317
    check-cast v2, Landroid/widget/SectionIndexer;

    .end local v2    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v2, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    add-int/2addr v5, v3

    .line 327
    .end local v1    # "numSections":I
    .end local v4    # "sections":[Ljava/lang/Object;
    :goto_1
    return v5

    .line 319
    .restart local v1    # "numSections":I
    .restart local v2    # "piece":Landroid/widget/ListAdapter;
    .restart local v4    # "sections":[Ljava/lang/Object;
    :cond_1
    if-eqz v4, :cond_2

    .line 320
    sub-int/2addr p1, v1

    .line 324
    .end local v1    # "numSections":I
    .end local v4    # "sections":[Ljava/lang/Object;
    :cond_2
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    add-int/2addr v3, v5

    .line 325
    goto :goto_0

    .line 327
    .end local v2    # "piece":Landroid/widget/ListAdapter;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 332
    const/4 v2, 0x0

    .line 334
    .local v2, "section":I
    invoke-virtual {p0}, Lcom/commonsware/cwac/merge/MergeAdapter;->getPieces()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    .line 335
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    .line 337
    .local v4, "size":I
    if-ge p1, v4, :cond_1

    .line 338
    instance-of v6, v1, Landroid/widget/SectionIndexer;

    if-eqz v6, :cond_0

    .line 339
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v5

    add-int/2addr v5, v2

    .line 357
    .end local v4    # "size":I
    :cond_0
    return v5

    .line 345
    .restart local v1    # "piece":Landroid/widget/ListAdapter;
    .restart local v4    # "size":I
    :cond_1
    instance-of v6, v1, Landroid/widget/SectionIndexer;

    if-eqz v6, :cond_2

    .line 346
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v3

    .line 348
    .local v3, "sections":[Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 349
    array-length v6, v3

    add-int/2addr v2, v6

    .line 354
    .end local v3    # "sections":[Ljava/lang/Object;
    :cond_2
    sub-int/2addr p1, v4

    .line 355
    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 362
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v3, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/commonsware/cwac/merge/MergeAdapter;->getPieces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    .line 365
    .local v2, "piece":Landroid/widget/ListAdapter;
    instance-of v4, v2, Landroid/widget/SectionIndexer;

    if-eqz v4, :cond_0

    .line 366
    check-cast v2, Landroid/widget/SectionIndexer;

    .end local v2    # "piece":Landroid/widget/ListAdapter;
    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 368
    .local v0, "curSections":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 369
    invoke-static {v3, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 374
    .end local v0    # "curSections":[Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 375
    new-array v4, v5, [Ljava/lang/String;

    .line 378
    :goto_1
    return-object v4

    :cond_2
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/commonsware/cwac/merge/MergeAdapter;->getPieces()Ljava/util/List;

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

    .line 268
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 270
    .local v2, "size":I
    if-ge p1, v2, :cond_0

    .line 272
    invoke-interface {v1, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 278
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :goto_1
    return-object v3

    .line 275
    .restart local v1    # "piece":Landroid/widget/ListAdapter;
    .restart local v2    # "size":I
    :cond_0
    sub-int/2addr p1, v2

    .line 276
    goto :goto_0

    .line 278
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 182
    const/4 v2, 0x0

    .line 184
    .local v2, "total":I
    iget-object v3, p0, Lcom/commonsware/cwac/merge/MergeAdapter;->pieces:Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;

    invoke-virtual {v3}, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->getRawPieces()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;

    .line 185
    .local v1, "piece":Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;
    iget-object v3, v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 186
    goto :goto_0

    .line 188
    .end local v1    # "piece":Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;
    :cond_0
    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/commonsware/cwac/merge/MergeAdapter;->getPieces()Ljava/util/List;

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

    .line 242
    .local v1, "piece":Landroid/widget/ListAdapter;
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 244
    .local v2, "size":I
    if-ge p1, v2, :cond_0

    .line 245
    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    .line 251
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :goto_1
    return v3

    .line 248
    .restart local v1    # "piece":Landroid/widget/ListAdapter;
    .restart local v2    # "size":I
    :cond_0
    sub-int/2addr p1, v2

    .line 249
    goto :goto_0

    .line 251
    .end local v1    # "piece":Landroid/widget/ListAdapter;
    .end local v2    # "size":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setActive(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isActive"    # Z

    .prologue
    .line 387
    iget-object v0, p0, Lcom/commonsware/cwac/merge/MergeAdapter;->pieces:Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;

    invoke-virtual {v0, p1, p2}, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->setActive(Landroid/view/View;Z)V

    .line 388
    invoke-virtual {p0}, Lcom/commonsware/cwac/merge/MergeAdapter;->notifyDataSetChanged()V

    .line 389
    return-void
.end method

.method public setActive(Landroid/widget/ListAdapter;Z)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "isActive"    # Z

    .prologue
    .line 382
    iget-object v0, p0, Lcom/commonsware/cwac/merge/MergeAdapter;->pieces:Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;

    invoke-virtual {v0, p1, p2}, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->setActive(Landroid/widget/ListAdapter;Z)V

    .line 383
    invoke-virtual {p0}, Lcom/commonsware/cwac/merge/MergeAdapter;->notifyDataSetChanged()V

    .line 384
    return-void
.end method
