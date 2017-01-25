.class Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;
.super Ljava/lang/Object;
.source "MergeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/commonsware/cwac/merge/MergeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PieceStateRoster"
.end annotation


# instance fields
.field protected active:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected pieces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->pieces:Ljava/util/ArrayList;

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->active:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/commonsware/cwac/merge/MergeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/commonsware/cwac/merge/MergeAdapter$1;

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;-><init>()V

    return-void
.end method


# virtual methods
.method add(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->pieces:Ljava/util/ArrayList;

    new-instance v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;-><init>(Landroid/widget/ListAdapter;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    return-void
.end method

.method getPieces()Ljava/util/List;
    .locals 4
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
    .line 439
    iget-object v2, p0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->active:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 440
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->active:Ljava/util/ArrayList;

    .line 442
    iget-object v2, p0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;

    .line 443
    .local v1, "state":Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;
    iget-boolean v2, v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;->isActive:Z

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->active:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;->adapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "state":Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;
    :cond_1
    iget-object v2, p0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->active:Ljava/util/ArrayList;

    return-object v2
.end method

.method getRawPieces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->pieces:Ljava/util/ArrayList;

    return-object v0
.end method

.method setActive(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isActive"    # Z

    .prologue
    .line 424
    iget-object v2, p0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;

    .line 425
    .local v1, "state":Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;
    iget-object v2, v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;->adapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;->adapter:Landroid/widget/ListAdapter;

    check-cast v2, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;

    invoke-virtual {v2, p1}, Lcom/commonsware/cwac/sacklist/SackOfViewsAdapter;->hasView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    iput-boolean p2, v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;->isActive:Z

    .line 428
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->active:Ljava/util/ArrayList;

    .line 432
    .end local v1    # "state":Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;
    :cond_1
    return-void
.end method

.method setActive(Landroid/widget/ListAdapter;Z)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "isActive"    # Z

    .prologue
    .line 414
    iget-object v2, p0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->pieces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;

    .line 415
    .local v1, "state":Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;
    iget-object v2, v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;->adapter:Landroid/widget/ListAdapter;

    if-ne v2, p1, :cond_0

    .line 416
    iput-boolean p2, v1, Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;->isActive:Z

    .line 417
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/commonsware/cwac/merge/MergeAdapter$PieceStateRoster;->active:Ljava/util/ArrayList;

    .line 421
    .end local v1    # "state":Lcom/commonsware/cwac/merge/MergeAdapter$PieceState;
    :cond_1
    return-void
.end method
