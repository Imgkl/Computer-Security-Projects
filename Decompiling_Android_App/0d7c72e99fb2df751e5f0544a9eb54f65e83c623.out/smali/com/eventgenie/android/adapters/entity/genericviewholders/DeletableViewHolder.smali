.class public Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;
.super Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;
.source "DeletableViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;
    }
.end annotation


# instance fields
.field private mDeleteButton:Landroid/widget/ImageButton;

.field private mItem:Lcom/eventgenie/android/container/EntityWrapper;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->mListeners:Ljava/util/List;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;)Lcom/eventgenie/android/container/EntityWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->mItem:Lcom/eventgenie/android/container/EntityWrapper;

    return-object v0
.end method

.method private getDeleteButton()Landroid/widget/ImageButton;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->button_delete:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    .line 29
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$1;

    invoke-direct {v1, p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$1;-><init>(Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->mDeleteButton:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public addDeleteRequestedListener(Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder$DeleteRequestedListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public populateFrom(Lcom/eventgenie/android/container/EntityWrapper;)V
    .locals 2
    .param p1, "item"    # Lcom/eventgenie/android/container/EntityWrapper;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->populateFrom(Lcom/eventgenie/android/container/EntityWrapper;)V

    .line 48
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->mItem:Lcom/eventgenie/android/container/EntityWrapper;

    .line 50
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/DeletableViewHolder;->getDeleteButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->allowDelete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 51
    return-void

    .line 50
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
