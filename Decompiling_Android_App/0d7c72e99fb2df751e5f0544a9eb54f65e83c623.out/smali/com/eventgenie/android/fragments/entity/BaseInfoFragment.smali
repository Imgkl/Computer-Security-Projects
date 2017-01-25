.class public abstract Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseFragment;
.source "BaseInfoFragment.java"


# instance fields
.field private mTitleColour:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseFragment;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method protected addMapLocations(Ljava/util/List;ZLandroid/view/View;)V
    .locals 12
    .param p2, "interactiveMapsAvailable"    # Z
    .param p3, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;Z",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "locationList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    sget v7, Lcom/eventgenie/android/R$id;->locations_header:I

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 60
    .local v2, "locationHeaderView":Landroid/view/View;
    sget v7, Lcom/eventgenie/android/R$id;->locations_layout:I

    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 62
    .local v3, "locationLayoutView":Landroid/widget/LinearLayout;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 64
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 65
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    sget v7, Lcom/eventgenie/android/R$string;->exhibitor_location:I

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v2, v7, v8}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 73
    .local v5, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/eventgenie/android/R$layout;->list_item_location:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 74
    .local v4, "locationView":Landroid/view/View;
    sget v7, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 75
    .local v6, "tLocation":Landroid/widget/TextView;
    sget v7, Lcom/eventgenie/android/R$id;->btn_map:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 76
    .local v0, "button":Landroid/widget/Button;
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 77
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    if-eqz p2, :cond_0

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 81
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 82
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    :cond_1
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 88
    .end local v0    # "button":Landroid/widget/Button;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "locationView":Landroid/view/View;
    .end local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6    # "tLocation":Landroid/widget/TextView;
    :cond_2
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 89
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    :cond_3
    return-void
.end method

.method public getTitleColour()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;->mTitleColour:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->getDetailsTitleColour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;->mTitleColour:Ljava/lang/Integer;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/BaseInfoFragment;->mTitleColour:Ljava/lang/Integer;

    return-object v0
.end method
