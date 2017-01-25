.class public Lcom/eventgenie/android/adapters/reflection/StringResourceAdapter;
.super Landroid/widget/ArrayAdapter;
.source "StringResourceAdapter.java"


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
    .locals 0
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
    .line 52
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 54
    iput-object p3, p0, Lcom/eventgenie/android/adapters/reflection/StringResourceAdapter;->mItems:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lcom/eventgenie/android/adapters/reflection/StringResourceAdapter;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private static setText(Landroid/widget/TextView;Ljava/lang/Integer;)V
    .locals 3
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    const-string v1, "### ERROR ###"

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
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
    .line 60
    move-object v4, p2

    .line 61
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_0

    .line 62
    iget-object v6, p0, Lcom/eventgenie/android/adapters/reflection/StringResourceAdapter;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 63
    .local v5, "vi":Landroid/view/LayoutInflater;
    sget v6, Lcom/eventgenie/android/R$layout;->list_item_two_lines_with_image:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 66
    .end local v5    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v6, p0, Lcom/eventgenie/android/adapters/reflection/StringResourceAdapter;->mItems:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 67
    .local v3, "o":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_1

    .line 68
    sget v6, Lcom/eventgenie/android/R$id;->line1:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    .local v1, "line1":Landroid/widget/TextView;
    sget v6, Lcom/eventgenie/android/R$id;->line2:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    .local v2, "line2":Landroid/widget/TextView;
    sget v6, Lcom/eventgenie/android/R$id;->icon:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 72
    .local v0, "icon":Landroid/widget/ImageView;
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const-string v6, ""

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v2, v6}, Lcom/eventgenie/android/adapters/reflection/StringResourceAdapter;->setText(Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 79
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "line1":Landroid/widget/TextView;
    .end local v2    # "line2":Landroid/widget/TextView;
    :cond_1
    return-object v4
.end method
