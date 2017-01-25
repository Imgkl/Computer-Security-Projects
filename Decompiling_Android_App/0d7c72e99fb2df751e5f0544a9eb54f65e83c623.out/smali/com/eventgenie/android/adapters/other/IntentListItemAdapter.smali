.class public Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "IntentListItemAdapter.java"


# instance fields
.field private final mColorFilter:Landroid/graphics/ColorFilter;

.field private final mContext:Landroid/content/Context;

.field private final mImageContainerLayoutId:I

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/IntentListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/IntentListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/IntentListItem;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/Integer;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "colorOverride"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/container/IntentListItem;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/container/IntentListItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;->mItems:Ljava/util/List;

    .line 60
    invoke-static {p3}, Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;->calculateColorFilter(Ljava/lang/Integer;)Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 61
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_icon_text:I

    iput v0, p0, Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;->mImageContainerLayoutId:I

    .line 62
    return-void
.end method

.method private static calculateColorFilter(Ljava/lang/Integer;)Landroid/graphics/ColorFilter;
    .locals 8
    .param p0, "color"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x0

    .line 112
    if-nez p0, :cond_0

    .line 113
    const/4 v5, 0x0

    .line 125
    :goto_0
    return-object v5

    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 116
    .local v1, "colorInt":I
    const/high16 v5, 0xff0000

    and-int/2addr v5, v1

    const v6, 0xffff

    div-int v4, v5, v6

    .line 117
    .local v4, "red":I
    const v5, 0xff00

    and-int/2addr v5, v1

    div-int/lit16 v2, v5, 0xff

    .line 118
    .local v2, "green":I
    and-int/lit16 v0, v1, 0xff

    .line 120
    .local v0, "blue":I
    const/16 v5, 0x14

    new-array v3, v5, [F

    const/4 v5, 0x0

    aput v7, v3, v5

    const/4 v5, 0x1

    aput v7, v3, v5

    const/4 v5, 0x2

    aput v7, v3, v5

    const/4 v5, 0x3

    aput v7, v3, v5

    const/4 v5, 0x4

    int-to-float v6, v4

    aput v6, v3, v5

    const/4 v5, 0x5

    aput v7, v3, v5

    const/4 v5, 0x6

    aput v7, v3, v5

    const/4 v5, 0x7

    aput v7, v3, v5

    const/16 v5, 0x8

    aput v7, v3, v5

    const/16 v5, 0x9

    int-to-float v6, v2

    aput v6, v3, v5

    const/16 v5, 0xa

    aput v7, v3, v5

    const/16 v5, 0xb

    aput v7, v3, v5

    const/16 v5, 0xc

    aput v7, v3, v5

    const/16 v5, 0xd

    aput v7, v3, v5

    const/16 v5, 0xe

    int-to-float v6, v0

    aput v6, v3, v5

    const/16 v5, 0xf

    aput v7, v3, v5

    const/16 v5, 0x10

    aput v7, v3, v5

    const/16 v5, 0x11

    aput v7, v3, v5

    const/16 v5, 0x12

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v3, v5

    const/16 v5, 0x13

    aput v7, v3, v5

    .line 125
    .local v3, "matrix":[F
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 76
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 84
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/container/IntentListItem;

    .line 86
    .local v1, "item":Lcom/eventgenie/android/container/IntentListItem;
    if-nez p2, :cond_1

    .line 87
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    iget v5, p0, Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;->mImageContainerLayoutId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 92
    .local v3, "v":Landroid/view/View;
    :goto_0
    sget v4, Lcom/eventgenie/android/R$id;->icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 93
    .local v0, "i":Landroid/widget/ImageView;
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 95
    .local v2, "t":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/eventgenie/android/container/IntentListItem;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {v1}, Lcom/eventgenie/android/container/IntentListItem;->getDrawable()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_2

    .line 98
    sget v4, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :goto_1
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v4, :cond_0

    .line 104
    iget-object v4, p0, Lcom/eventgenie/android/adapters/other/IntentListItemAdapter;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 107
    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    return-object v3

    .line 89
    .end local v0    # "i":Landroid/widget/ImageView;
    .end local v2    # "t":Landroid/widget/TextView;
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    move-object v3, p2

    .restart local v3    # "v":Landroid/view/View;
    goto :goto_0

    .line 100
    .restart local v0    # "i":Landroid/widget/ImageView;
    .restart local v2    # "t":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v1}, Lcom/eventgenie/android/container/IntentListItem;->getDrawable()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
