.class public abstract Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CheckboxArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/eventgenie/android/ui/searchui/CheckboxListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/ui/searchui/CheckboxListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/ui/searchui/CheckboxListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/ui/searchui/CheckboxListItem;>;"
    sget v0, Lcom/eventgenie/android/R$id;->text:I

    sget v1, Lcom/eventgenie/android/R$layout;->list_item_tags_search:I

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 24
    iput-object p2, p0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;->mItems:Ljava/util/List;

    .line 25
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    .local v2, "view":Landroid/view/View;
    const/4 v0, 0x0

    .line 33
    .local v0, "holder":Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 34
    iget-object v3, p0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/eventgenie/android/R$layout;->list_item_tags_search:I

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 38
    new-instance v0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;-><init>(Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;)V

    .line 39
    .restart local v0    # "holder":Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;
    sget v3, Lcom/eventgenie/android/R$id;->checkbox:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;

    iput-object v3, v0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->mCheckBox:Lcom/eventgenie/android/ui/searchui/ThreeStateButton;

    .line 40
    sget v3, Lcom/eventgenie/android/R$id;->text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 41
    sget v3, Lcom/eventgenie/android/R$id;->checkbox_list_item_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    .line 42
    sget v3, Lcom/eventgenie/android/R$id;->expand:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->mExpandImageView:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    :goto_0
    iput p1, v0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->mIndex:I

    .line 50
    iget-object v3, p0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    .line 51
    .local v1, "item":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    iget-object v3, v0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->mCheckBox:Lcom/eventgenie/android/ui/searchui/ThreeStateButton;

    invoke-virtual {v1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getCheckedValue()Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->setState(Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;)V

    .line 52
    iget-object v3, v0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->mCheckBox:Lcom/eventgenie/android/ui/searchui/ThreeStateButton;

    invoke-virtual {v3, v0}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v3, v0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v3, v0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v4, v0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;

    invoke-virtual {v3}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {v1}, Lcom/eventgenie/android/ui/searchui/CheckboxListItem;->getTagItem()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->hasChildren()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    iget-object v3, v0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->mExpandImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    :goto_1
    return-object v2

    .line 45
    .end local v1    # "item":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    :cond_0
    move-object v2, p2

    .line 46
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;
    check-cast v0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;
    goto :goto_0

    .line 60
    .restart local v1    # "item":Lcom/eventgenie/android/ui/searchui/CheckboxListItem;
    :cond_1
    iget-object v3, v0, Lcom/eventgenie/android/ui/searchui/CheckboxArrayAdapter$ViewHolder;->mExpandImageView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public abstract onCheckboxClick(Lcom/eventgenie/android/ui/searchui/CheckboxListItem;)V
.end method

.method public abstract onLayoutClick(Lcom/eventgenie/android/ui/searchui/CheckboxListItem;)V
.end method
