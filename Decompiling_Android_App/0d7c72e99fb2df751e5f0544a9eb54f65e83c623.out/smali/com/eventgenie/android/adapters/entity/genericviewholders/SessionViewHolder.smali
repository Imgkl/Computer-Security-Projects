.class public Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;
.super Lcom/eventgenie/android/adapters/entity/genericviewholders/AbstractViewHolder;
.source "SessionViewHolder.java"


# instance fields
.field private mColorIndicator:Landroid/view/View;

.field private mDay:Landroid/widget/TextView;

.field private mEnd:Landroid/widget/TextView;

.field private mFavStar:Landroid/widget/ImageView;

.field private mLocation:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;

.field private mRow:Landroid/view/View;

.field private mStart:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/AbstractViewHolder;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mFavStar:Landroid/widget/ImageView;

    .line 15
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mStart:Landroid/widget/TextView;

    .line 16
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mEnd:Landroid/widget/TextView;

    .line 17
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mName:Landroid/widget/TextView;

    .line 18
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mLocation:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mDay:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mRow:Landroid/view/View;

    .line 24
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mRow:Landroid/view/View;

    .line 25
    return-void
.end method

.method private getColorIndicator()Landroid/view/View;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mColorIndicator:Landroid/view/View;

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mRow:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->color_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mColorIndicator:Landroid/view/View;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mColorIndicator:Landroid/view/View;

    return-object v0
.end method

.method private getDay()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mDay:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mRow:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->day:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mDay:Landroid/widget/TextView;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mDay:Landroid/widget/TextView;

    return-object v0
.end method

.method private getEnd()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mEnd:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mRow:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->end:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mEnd:Landroid/widget/TextView;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mEnd:Landroid/widget/TextView;

    return-object v0
.end method

.method private getFavouriteStar()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mFavStar:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mRow:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->favourite_star:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mFavStar:Landroid/widget/ImageView;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mFavStar:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getLocation()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mLocation:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mRow:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mLocation:Landroid/widget/TextView;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mLocation:Landroid/widget/TextView;

    return-object v0
.end method

.method private getName()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mRow:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mName:Landroid/widget/TextView;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method private getRow()Landroid/view/View;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mRow:Landroid/view/View;

    return-object v0
.end method

.method private getStart()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mStart:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mRow:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->start:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mStart:Landroid/widget/TextView;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->mStart:Landroid/widget/TextView;

    return-object v0
.end method

.method protected static setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/eventgenie/android/utils/help/dateutils/ScheduleUtils;->mapListTextView(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public populateFrom(Lcom/eventgenie/android/container/EntityWrapper;)V
    .locals 6
    .param p1, "wrapper"    # Lcom/eventgenie/android/container/EntityWrapper;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->getName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->calcName(Lcom/eventgenie/android/container/EntityWrapper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->isFavourite()Z

    move-result v1

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->hasNote()Z

    move-result v2

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->isBookmarked()Z

    move-result v3

    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->getFavouriteStar()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/eventgenie/android/ui/help/UIUtils;->setAgendaAndNoteIcon(ZZZLandroid/widget/ImageView;Z)V

    .line 86
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->getRow()Landroid/view/View;

    move-result-object v1

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->isFeatured()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->setFeatured(Landroid/view/View;Z)V

    .line 90
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->getStart()Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getMiddleLeftRowValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->getEnd()Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getMiddleRightRowValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->getDay()Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getMiddleLeftRowValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->getLocation()Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->getColorIndicator()Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "colorIndicator":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 99
    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getIndicatorColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eventgenie/android/adapters/entity/genericviewholders/SessionViewHolder;->setColour(Landroid/view/View;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method
