.class public Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;
.super Lcom/eventgenie/android/adapters/entity/genericviewholders/AbstractViewHolder;
.source "CommonViewHolder.java"


# instance fields
.field private colorIndicator:Landroid/view/View;

.field private description:Landroid/widget/TextView;

.field private favStar:Landroid/widget/ImageView;

.field private middleLeft:Landroid/widget/TextView;

.field private middleRight:Landroid/widget/TextView;

.field private name:Landroid/widget/TextView;

.field private photo:Landroid/widget/ImageView;

.field protected row:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/AbstractViewHolder;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->favStar:Landroid/widget/ImageView;

    .line 17
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->photo:Landroid/widget/ImageView;

    .line 18
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->description:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->middleLeft:Landroid/widget/TextView;

    .line 20
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->middleRight:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->name:Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->row:Landroid/view/View;

    .line 26
    iput-object p1, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->row:Landroid/view/View;

    .line 27
    return-void
.end method

.method private getColorIndicator()Landroid/view/View;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->colorIndicator:Landroid/view/View;

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->color_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->colorIndicator:Landroid/view/View;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->colorIndicator:Landroid/view/View;

    return-object v0
.end method

.method private getDescription()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->description:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->description:Landroid/widget/TextView;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->description:Landroid/widget/TextView;

    return-object v0
.end method

.method private getFavouriteStar()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->favStar:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->favourite_star:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->favStar:Landroid/widget/ImageView;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->favStar:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getMiddleLeft()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->middleLeft:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->middleLeft:Landroid/widget/TextView;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->middleLeft:Landroid/widget/TextView;

    return-object v0
.end method

.method private getMiddleRight()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->middleRight:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->middleRight:Landroid/widget/TextView;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->middleRight:Landroid/widget/TextView;

    return-object v0
.end method

.method private getName()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->name:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->name:Landroid/widget/TextView;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method private getPhoto()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->photo:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->photo:Landroid/widget/ImageView;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->photo:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getRow()Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->row:Landroid/view/View;

    return-object v0
.end method

.method private toggleMiddleRow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getMiddleLeft()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v0

    .line 140
    .local v0, "a":Z
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getMiddleRight()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v1

    .line 142
    .local v1, "b":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    sget v2, Lcom/eventgenie/android/R$id;->row2:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->setVisibility(Landroid/view/View;I)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_1
    sget v2, Lcom/eventgenie/android/R$id;->row2:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->setVisibility(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public populateFrom(Lcom/eventgenie/android/container/EntityWrapper;)V
    .locals 8
    .param p1, "wrapper"    # Lcom/eventgenie/android/container/EntityWrapper;

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getName()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->calcName(Lcom/eventgenie/android/container/EntityWrapper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getFavouriteStar()Landroid/widget/ImageView;

    move-result-object v5

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->isFavourite()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->isBookmarked()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    :goto_0
    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->hasNote()Z

    move-result v6

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getDefaultDrawableForFav(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)I

    move-result v7

    invoke-static {v5, v3, v6, v7}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->setFavourite(Landroid/view/View;ZZI)V

    .line 92
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getRow()Landroid/view/View;

    move-result-object v3

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->isFeatured()Z

    move-result v5

    invoke-static {v3, v5}, Lcom/eventgenie/android/adapters/base/EntityAdaptorUtils;->setFeatured(Landroid/view/View;Z)V

    .line 96
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getDescription()Landroid/widget/TextView;

    move-result-object v3

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getFullDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 97
    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->limitDescription()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getDescription()Landroid/widget/TextView;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 99
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getDescription()Landroid/widget/TextView;

    move-result-object v3

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 105
    :goto_1
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getMiddleLeft()Landroid/widget/TextView;

    move-result-object v3

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getMiddleLeftRowValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getMiddleRight()Landroid/widget/TextView;

    move-result-object v3

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getMiddleRightRowValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getColorIndicator()Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "colorIndicator":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getColorIndicator()Landroid/view/View;

    move-result-object v3

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getIndicatorColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->setColour(Landroid/view/View;Ljava/lang/String;)V

    .line 115
    :cond_1
    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getListModifier()Lcom/genie_connect/android/db/config/features/GmListModifier;

    move-result-object v3

    invoke-interface {v3}, Lcom/genie_connect/android/db/config/features/GmListModifier;->showThumbnail()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getPhoto()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 116
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getPhoto()Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->setVisibility(Landroid/view/View;I)V

    .line 118
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getPhoto()Landroid/widget/ImageView;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getListModifier()Lcom/genie_connect/android/db/config/features/GmListModifier;

    move-result-object v3

    invoke-interface {v3}, Lcom/genie_connect/android/db/config/features/GmListModifier;->getDefaultThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "defaultThumbnail":Ljava/lang/String;
    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "mugshotUrl":Ljava/lang/String;
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 124
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getPhoto()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 135
    .end local v1    # "defaultThumbnail":Ljava/lang/String;
    .end local v2    # "mugshotUrl":Ljava/lang/String;
    :goto_2
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getRow()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->toggleMiddleRow(Landroid/view/View;)V

    .line 136
    return-void

    .end local v0    # "colorIndicator":Landroid/view/View;
    :cond_2
    move v3, v4

    .line 86
    goto/16 :goto_0

    .line 101
    :cond_3
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getDescription()Landroid/widget/TextView;

    move-result-object v3

    const v5, 0x7fffffff

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 102
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getDescription()Landroid/widget/TextView;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_1

    .line 125
    .restart local v0    # "colorIndicator":Landroid/view/View;
    .restart local v1    # "defaultThumbnail":Ljava/lang/String;
    .restart local v2    # "mugshotUrl":Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 126
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getPhoto()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 128
    :cond_5
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getPhoto()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 132
    .end local v1    # "defaultThumbnail":Ljava/lang/String;
    .end local v2    # "mugshotUrl":Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->getPhoto()Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/eventgenie/android/adapters/entity/genericviewholders/CommonViewHolder;->setVisibility(Landroid/view/View;I)V

    goto :goto_2
.end method
