.class public Lcom/eventgenie/android/adapters/reflection/ActivityInfoResourceAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ActivityInfoResourceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ActivityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mItems:[Landroid/content/pm/ActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Landroid/content/pm/ActivityInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .param p3, "items"    # [Landroid/content/pm/ActivityInfo;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 50
    iput-object p3, p0, Lcom/eventgenie/android/adapters/reflection/ActivityInfoResourceAdapter;->mItems:[Landroid/content/pm/ActivityInfo;

    .line 51
    iput-object p1, p0, Lcom/eventgenie/android/adapters/reflection/ActivityInfoResourceAdapter;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    move-object v4, p2

    .line 57
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_0

    .line 58
    iget-object v6, p0, Lcom/eventgenie/android/adapters/reflection/ActivityInfoResourceAdapter;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 59
    .local v5, "vi":Landroid/view/LayoutInflater;
    sget v6, Lcom/eventgenie/android/R$layout;->list_item_two_lines_with_image:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 62
    .end local v5    # "vi":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v6, p0, Lcom/eventgenie/android/adapters/reflection/ActivityInfoResourceAdapter;->mItems:[Landroid/content/pm/ActivityInfo;

    aget-object v3, v6, p1

    .line 63
    .local v3, "o":Landroid/content/pm/ActivityInfo;
    if-eqz v3, :cond_1

    .line 64
    sget v6, Lcom/eventgenie/android/R$id;->line1:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    .local v1, "line1":Landroid/widget/TextView;
    sget v6, Lcom/eventgenie/android/R$id;->line2:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 66
    .local v2, "line2":Landroid/widget/TextView;
    sget v6, Lcom/eventgenie/android/R$id;->icon:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 68
    .local v0, "icon":Landroid/widget/ImageView;
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "line1":Landroid/widget/TextView;
    .end local v2    # "line2":Landroid/widget/TextView;
    :cond_1
    return-object v4
.end method
