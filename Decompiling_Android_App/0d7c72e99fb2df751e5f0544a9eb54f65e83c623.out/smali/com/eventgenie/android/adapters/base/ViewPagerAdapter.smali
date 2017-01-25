.class public Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ViewPagerAdapter.java"


# instance fields
.field private final mAlteredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCapitalisedTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mOriginalTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mViewList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mCapitalisedTitleList:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mOriginalTitleList:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mAlteredList:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public addView(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "isAltered"    # Z

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mCapitalisedTitleList:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mOriginalTitleList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mAlteredList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mCapitalisedTitleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mAlteredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mOriginalTitleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->notifyDataSetChanged()V

    .line 72
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 89
    int-to-long v0, p1

    return-wide v0
.end method

.method public getOriginalPageTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mOriginalTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->getPageTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mCapitalisedTitleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 107
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mViewList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 108
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mViewList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public shouldHideIndicator()Z
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->mViewList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
