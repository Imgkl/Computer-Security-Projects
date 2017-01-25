.class public Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DrawableResourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mColorFilter:Landroid/graphics/ColorFilter;

.field private final mContext:Landroid/content/Context;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Landroid/graphics/ColorFilter;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p4, "colorFilter"    # Landroid/graphics/ColorFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/graphics/ColorFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 61
    iput-object p3, p0, Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;->mItems:Ljava/util/List;

    .line 62
    iput-object p1, p0, Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;->mContext:Landroid/content/Context;

    .line 63
    iput-object p4, p0, Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 64
    return-void
.end method

.method private setIcon(Landroid/widget/ImageView;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "id"    # Ljava/lang/Integer;

    .prologue
    .line 89
    if-nez p2, :cond_1

    .line 90
    sget v1, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iget-object v1, p0, Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 68
    move-object v4, p2

    .line 69
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_0

    .line 70
    iget-object v6, p0, Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 71
    .local v5, "vi":Landroid/view/LayoutInflater;
    sget v6, Lcom/eventgenie/android/R$layout;->list_item_two_lines_with_image:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 74
    .end local v5    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v6, p0, Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;->mItems:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 75
    .local v3, "o":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_1

    .line 76
    sget v6, Lcom/eventgenie/android/R$id;->line1:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 77
    .local v1, "line1":Landroid/widget/TextView;
    sget v6, Lcom/eventgenie/android/R$id;->line2:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 78
    .local v2, "line2":Landroid/widget/TextView;
    sget v6, Lcom/eventgenie/android/R$id;->icon:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 80
    .local v0, "icon":Landroid/widget/ImageView;
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const-string v6, ""

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-direct {p0, v0, v6}, Lcom/eventgenie/android/adapters/reflection/DrawableResourceAdapter;->setIcon(Landroid/widget/ImageView;Ljava/lang/Integer;)V

    .line 85
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "line1":Landroid/widget/TextView;
    .end local v2    # "line2":Landroid/widget/TextView;
    :cond_1
    return-object v4
.end method
